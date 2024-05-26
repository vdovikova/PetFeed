import 'package:flutter/material.dart';
import 'package:pet_feed/custom_icons.dart';
import 'package:pet_feed/design/colors.dart';
import 'package:pet_feed/food/food_analysis_widget.dart';
import 'package:pet_feed/food/food_info_widget.dart';
import 'package:pet_feed/food/food_progress_widget.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FoodProgress(),
        FoodInfo(),
        FoodAnalysis(),
      ],
    );
  }
}
