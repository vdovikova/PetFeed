import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              width: 100,
              child: Card(
                color: mainWhiteColor,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: textColor,
                        ),
                        Text(
                          "Кокос",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: textColor,
                              fontFamily: "Montserrat",
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(CustomIcons.pawprint, color: textColor),
                        Text(
                          "Кот",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: textColor,
                              fontFamily: "Montserrat",
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.person, color: textColor),
                        Text(
                          "Мальчик",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: textColor,
                              fontFamily: "Montserrat",
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: textColor),
                        Text(
                          "3 года",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: textColor,
                              fontFamily: "Montserrat",
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.medical_information, color: textColor),
                        Text(
                          "Кастрирован",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: textColor,
                              fontFamily: "Montserrat",
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList.builder(
              itemBuilder: (context, index) => Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        color: mainYellowColor,
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.symmetric(horizontal: 20)
                        .copyWith(bottom: 20),
                  ))
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
