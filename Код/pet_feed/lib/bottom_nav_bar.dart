import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';
import 'package:pet_feed/app_bar_controller.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State {
  int _selectedTab = 1;

  List _pages = [
    Center(
      child: Text("Pet"),
    ),
    Center(
      child: HomePage(),
    ),
    Center(
      child: Text("Settings"),
    ),
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
