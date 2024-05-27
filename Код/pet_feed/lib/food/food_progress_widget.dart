import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';

class FoodProgress extends StatelessWidget {
  const FoodProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 350,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: mainWhiteColor,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              const Row(
                children: [
                  Icon(Icons.add, color: textColor),
                  Expanded(
                    child: Text(
                      " Еда",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 30,
                        color: textColor,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Center(
                child: Stack(
                  children: [
                    Transform.scale(
                      scale: 5.5,
                      child: const CircularProgressIndicator(
                        value: 0.75, // устанавливаем фиксированное значение
                        backgroundColor: mainWhiteColor,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(mainGreenColor),
                        strokeWidth: 4,
                      ),
                    ),
                    const Text(
                      "45/60 г",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 25,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              )),
            ]),
          ),
        ),
      ),
    );
  }
}
