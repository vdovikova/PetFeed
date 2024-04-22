import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
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
            centerTitle: true,
            title: const Text(
              'PetFeed',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: mainWhiteColor, fontSize: 25, fontFamily: 'Aclonica'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Питомцы'),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.pawprint), label: 'Главное'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Настройки'),
        ],
        selectedLabelStyle: const TextStyle(fontFamily: 'Montserrat'),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Montserrat'),
        backgroundColor: bottomNavBarColor,
        unselectedItemColor: textColor,
        selectedItemColor: mainGreenColor,
      ),
    );
  }
}
