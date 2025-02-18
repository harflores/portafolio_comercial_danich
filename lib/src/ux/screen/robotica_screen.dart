import 'package:flutter/material.dart';

import '../widgets/custom_scaffold.dart';

class RoboticaScreen extends StatefulWidget {
  const RoboticaScreen({super.key});

  @override
  State<RoboticaScreen> createState() => _AlmacenajeScreenState();
}

class _AlmacenajeScreenState extends State<RoboticaScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/sistemas/fnd_robotica.png"),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
