import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pet_feed/design/colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkTheme = false;
  String _selectedLanguage = 'Русский';
  bool _isNameEditing = false;
  bool _isEmailEditing = false;
  bool _isPassEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PetFeed',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: mainWhiteColor, fontSize: 25, fontFamily: 'Aclonica'),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                mainYellowColor,
                mainGreenColor,
              ],
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text("Настройки",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 25)),
              const SizedBox(height: 8),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      setState(() {
                        _isNameEditing = !_isNameEditing;
                      });
                    },
                  ),
                  const Text(
                    'Имя',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        color: textColor),
                  ),
                ],
              ),
              Column(
                children: [
                  if (_isNameEditing)
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Введите имя',
                          border: OutlineInputBorder()),
                    ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      setState(() {
                        _isEmailEditing = !_isEmailEditing;
                      });
                    },
                  ),
                  const Text(
                    'Почта',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        color: textColor),
                  ),
                ],
              ),
              Column(
                children: [
                  if (_isEmailEditing)
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Введите почту',
                          border: OutlineInputBorder()),
                    ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      setState(() {
                        _isPassEditing = !_isPassEditing;
                      });
                    },
                  ),
                  const Text(
                    'Пароль',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        color: textColor),
                  ),
                ],
              ),
              Column(
                children: [
                  if (_isPassEditing)
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Введите пароль',
                          border: OutlineInputBorder()),
                    ),
                ],
              ),
              Divider(),
              const Row(
                children: [
                  Icon(Icons.sunny, color: textColor),
                  Text(
                    ' Тема',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        color: textColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(' Светлая',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: textColor,
                      )),
                  Switch(
                    value: _isDarkTheme,
                    activeColor: mainGreenColor,
                    inactiveTrackColor: backgroundColor,
                    inactiveThumbColor: mainGreenColor,
                    onChanged: (value) {
                      setState(() {
                        _isDarkTheme = value;
                      });
                    },
                  ),
                  const Text('Темная',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: textColor)),
                ],
              ),
              Divider(),
              const Row(
                children: [
                  Icon(Icons.language, color: textColor),
                  Text(
                    ' Язык',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        color: textColor),
                  ),
                ],
              ),
              DropdownButton<String>(
                style: const TextStyle(
                    fontFamily: 'Montserrat', fontSize: 20, color: textColor),
                value: _selectedLanguage,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLanguage = newValue!;
                  });
                },
                items: <String>['Русский', 'English']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Divider(),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.exit_to_app_outlined)),
                  const Text(
                    'Выйти из аккаунта',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        color: textColor),
                  ),
                ],
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: mainWhiteColor),
                child: const Text(
                  'Удалить мой аккаунт',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
