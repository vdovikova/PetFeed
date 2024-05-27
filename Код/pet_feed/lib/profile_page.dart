import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              width: 390,
              height: 250,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: mainWhiteColor,
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(children: [
                        Row(
                          children: [
                            Icon(Icons.edit, color: textColor),
                            Text(
                              " Кокос",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 30,
                                  color: textColor),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Icon(CustomIcons.pawprint, color: textColor),
                              Text(
                                " Кот",
                                style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Icon(Icons.person, color: textColor),
                              Text(
                                " Мальчик",
                                style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Icon(Icons.access_time_filled_outlined,
                                  color: textColor),
                              Text(
                                " 3 года",
                                style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Icon(Icons.medication_outlined, color: textColor),
                              Text(
                                " Кастрирован",
                                style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ]),
                    )),
              )),
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.edit,
                  color: textColor,
                ),
                Text(
                  ' Здоровье',
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 25),
                )
              ],
            ),
          ),
          Container(
              width: 390,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 5, 20),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: mainWhiteColor,
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: Table(
                            columnWidths: const {
                              0: FlexColumnWidth(3),
                              1: FlexColumnWidth(2)
                            },
                            children: const [
                              TableRow(
                                children: [
                                  Text(
                                    "Активность",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        color: textColor),
                                  ),
                                  Text(
                                    "Высокая",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        color: textColor),
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text(
                                    "Вес",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        color: textColor),
                                  ),
                                  Text(
                                    "4.5 кг",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        color: textColor),
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text(
                                    "Болезни",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        color: textColor),
                                  ),
                                  Text(
                                    "Нет",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        color: textColor),
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ))),
              )),
        ],
      ),
    );
  }
}
