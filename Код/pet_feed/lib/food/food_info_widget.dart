import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 210,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 5, 20),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: mainYellowColor.withOpacity(0.6),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Probalance Sterilized",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                color: textColor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Корм подходит вашему питомцу",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: textColor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Сменить корм",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: textColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
