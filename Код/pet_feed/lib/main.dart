import 'package:flutter/material.dart';
import 'package:pet_feed/bottom_nav_bar.dart';
import 'package:pet_feed/design/colors.dart';
import 'package:pet_feed/app_bar_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PetFeed',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: mainWhiteColor),
          useMaterial3: true,
        ),
        home: const BottomNavBar(),
        debugShowCheckedModeBanner: false);
  }
}
