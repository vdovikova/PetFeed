import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';
import 'package:pet_feed/app_bar_controller.dart';
import 'package:pet_feed/settings_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State {
  int _selectedTab = 0;

  final List _pages = [
    const Center(
      child: Text("Pet"),
    ),
    const Center(
      child: HomePage(),
    ),
    const Center(child: SettingsPage()),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Питомцы'),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.pawprint), label: 'Главное'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Настройки'),
        ],
        selectedLabelStyle: const TextStyle(
            fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Montserrat'),
        backgroundColor: bottomNavBarColor,
        unselectedItemColor: textColor,
        selectedItemColor: mainGreenColor,
      ),
    );
  }
}
