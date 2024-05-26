import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';

class FoodAnalysis extends StatelessWidget {
  const FoodAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 1000,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 5, 20),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: mainWhiteColor,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Анализ корма",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                          color: textColor))
                ],
              ),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(2),
                },
                children: const [
                  TableRow(children: [
                    Text("Элемент",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    Text("Есть",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    Text("Минимум",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    Text("Белки",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("32%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("26%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    Text("Жиры",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("12%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("9%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    Text("Кальций",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    Text("Фосфор",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    Text("Витамин А",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    Text("Витамин D",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    Text("Витамин Е",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
