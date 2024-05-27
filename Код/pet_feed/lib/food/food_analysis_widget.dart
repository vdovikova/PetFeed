import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';

class FoodAnalysis extends StatelessWidget {
  const FoodAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    double protein = 0;
    double fat = 0;
    double calcium = 0;
    double phosphorus = 0;
    int vitA = 0;
    int vitD = 0;
    int vitE = 0;
    double vitB1 = 0;
    double vitB2 = 0;
    double vitB3 = 0;
    double vitB4 = 0;
    double vitB5 = 0;
    double vitB6 = 0;
    double vitB9 = 0;
    double vitB12 = 0;
    double vitH = 0;
    double ferrum = 0;
    double copper = 0;
    double zinc = 0;
    double manganese = 0;
    double iodine = 0;
    double selenium = 0;

    return Container(
      width: 390,
      height: 800,
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
                children: [
                  const TableRow(children: [
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
                    const Text("Белки",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("$protein%",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    const Text("26%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Жиры",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("$fat%",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    const Text("9%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Кальций",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("$calcium%",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    const Text("0.6%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Фосфор",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    Text("$phosphorus%",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                    const Text("0.5%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин А",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitA ME",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("3332 ME",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин D",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitD ME",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("280 ME",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин Е",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitE ME",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("40 ME",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин B1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitB1 мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("5.6 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин B2",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitB2 мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("4 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин B3",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitB3 мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("60 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин B4",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitB4 мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("2400 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин B5",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitB5 мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("5.75 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин B6",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitB6 мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("4 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин B9",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitB9 мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("0.8 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин B12",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitB12 мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("0.02 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Витамин H",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$vitH мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("0.07 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Железо",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$ferrum мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("80 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Медь",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$copper мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("5 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Цинк",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$zinc мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("75 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Марганец",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$manganese мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("7.6 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Йод",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$iodine мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("0.6 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                  ]),
                  TableRow(children: [
                    const Text("Селен",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            color: textColor)),
                    Text("$selenium мг",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: textColor)),
                    const Text("0.3 мг",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
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
