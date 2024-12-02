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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: const [
              CustomCards(
                titleCard: 'Agroindustria',
              ),
              CustomCards(
                titleCard: 'Logistica',
              ),
              CustomCards(
                titleCard: 'Alimentaria',
              ),
              // Agrega más CustomCards aquí si es necesario
            ],
          ),
        );
      },
    );
  }
}
