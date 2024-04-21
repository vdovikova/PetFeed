import 'package:flutter/material.dart';
import 'package:pet_feed/main.dart';
import 'package:pet_feed/design/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: mainGreenColor,
        )
      ],
    ));
  }
}
