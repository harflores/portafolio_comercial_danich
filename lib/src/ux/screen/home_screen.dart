import 'package:flutter/material.dart';

import '../widgets/custom_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomCards(
          titleCard: 'Agroindustria',
        ),
        SizedBox(
          width: 10,
        ),
        CustomCards(
          titleCard: 'Logistica',
        ),
        SizedBox(
          width: 10,
        ),
        CustomCards(
          titleCard: 'Alimentaria',
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
