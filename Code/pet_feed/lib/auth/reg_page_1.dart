import 'package:flutter/material.dart';
import 'package:pet_feed/auth/login_page.dart';
import 'package:pet_feed/auth/name_page.dart';
import 'package:pet_feed/design/colors.dart';
import 'package:pet_feed/user.dart';
import 'package:pet_feed/user_provider.dart';
import 'package:talker/talker.dart';

import 'auth_app_bar.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final talker = Talker();
  Color bEmailColor = mainWhiteColor;
  Color bPassColor = mainWhiteColor;
  Color bConfPassColor = mainWhiteColor;
  final _emailKey = GlobalKey<FormState>();
  final _passKey = GlobalKey<FormState>();
  final _confPassKey = GlobalKey<FormState>();

  final textInFormFieldStyle = TextStyle(
      color: textColor.withOpacity(0.9),
      fontSize: 15,
      fontFamily: 'Montserrat');

  @override
  Widget build(BuildContext context) {
    UserInfo user = UserProvider.of(context);

    const headStyle = TextStyle(
        color: mainWhiteColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat');

    const textAboveFormStyle =
        TextStyle(color: textColor, fontSize: 18, fontFamily: 'Montserrat');

    return Scaffold(
      body: Stack(
        children: [
          // изображение на фоне
          Positioned.fill(
            child: Image.asset(
              'assets/img/background.png',
              fit: BoxFit.cover,
            ),
          ),

          // форма для регистрации
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // логотип
                const AuthAppBar(),
                const SizedBox(height: 50),

                // ЗАГОЛОВОК
                const Text(
                  'Регистрация',
                  textAlign: TextAlign.center,
                  style: headStyle,
                ),
                const SizedBox(height: 32),

                // поле ввода почты
                const Row(
                  children: [
                    Text(
                      'Почта',
                      style: textAboveFormStyle,
                    ),
                  ],
                ),
                Form(
                  key: _emailKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Введите почту',
                      hintStyle: textInFormFieldStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: bEmailColor),
                      ),
                    ),
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        bEmailColor = dangerColor;
                        return 'Поле не может быть пустым';
                      }
                      String pattern =
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                      RegExp regex = new RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        bEmailColor = dangerColor;
                        return 'Пожалуйста, введите корректный email';
                      }
                    },
                  ),
                ),

                const SizedBox(height: 16),

                // поле ввода пароля
                const Row(
                  children: [
                    Text(
                      'Пароль',
                      style: textAboveFormStyle,
                    ),
                  ],
                ),
                Form(
                    key: _passKey,
                    child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Введите пароль',
                          hintStyle: textInFormFieldStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: bPassColor),
                          ),
                        ),
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            bPassColor = dangerColor;
                            return 'Поле не может быть пустым';
                          }
                          if (value.length < 8) {
                            bPassColor = dangerColor;
                            return 'Пароль должен содержать не менее 8 символов';
                          }
                        })),

                const SizedBox(height: 16),

                // поле подтверждения пароля
                const Row(
                  children: [
                    Text(
                      'Подтверждение пароля',
                      style: textAboveFormStyle,
                    ),
                  ],
                ),
                Form(
                    key: _confPassKey,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true, // закрашивает поле ввода
                        fillColor: Colors.white, // цвет заливки
                        hintText: 'Повторите пароль', // подсказка
                        hintStyle: textInFormFieldStyle,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: bConfPassColor),
                        ),
                      ),
                      controller: confirmPasswordController,
                      validator: (value) {
                    if (value == null || value.isEmpty) {
                    bConfPassColor = dangerColor;
                    return 'Поле не может быть пустым';
                    }
                    if (value != passwordController.text) {
                    bConfPassColor = dangerColor;
                    return 'Пароли должны совпадать';
                    }
                    },
                    ),),


                const SizedBox(height: 40),

                ElevatedButton(
                  onPressed: () {
                    if (_emailKey.currentState!.validate() && _passKey.currentState!.validate() && _confPassKey.currentState!.validate()) {
                      setState(() {
                        user.email = emailController.text;
                        user.password = passwordController.text;
                      });
                    }

                    if (_passKey.currentState!.validate() && _emailKey.currentState!.validate() && _confPassKey.currentState!.validate()) {
                      talker.debug(user.toString());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NamePage()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: textColor, // цвет фона кнопки
                      shape: RoundedRectangleBorder(
                        // закругление краев
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(350, 60)),
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(
                        color: mainWhiteColor, // цвет текста
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),

                const SizedBox(height: 16),

                // возврат на вход
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          textColor.withOpacity(0.5), // цвет фона кнопки
                      shape: RoundedRectangleBorder(
                        // закругление краев
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: const Size(350, 20)),
                  child: const Text(
                    'Уже зарегистрированы? Войти',
                    style: TextStyle(
                        color: mainWhiteColor, // цвет текста
                        fontSize: 16,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
