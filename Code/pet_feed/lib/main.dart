import 'package:flutter/material.dart';
import 'package:pet_feed/auth/reg_page_1.dart';
import 'package:pet_feed/design/colors.dart';
import 'package:pet_feed/user.dart';
import 'package:pet_feed/user_provider.dart';
import 'package:talker/talker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'auth/login_page.dart';


Talker talker = Talker();
void main() {
  UserInfo user = UserInfo();
  runApp(
    UserProvider(
      user: user,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    UserInfo user = UserProvider.of(context);
    talker.debug(user.toString());

    return MaterialApp(
      title: 'PetFeed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainWhiteColor),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
