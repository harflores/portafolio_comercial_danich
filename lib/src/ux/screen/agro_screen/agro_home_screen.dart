import 'package:flutter/material.dart';
import 'package:portafolio_comercial_danich/src/ux/widgets/custom_cards.dart';
import 'package:portafolio_comercial_danich/src/ux/widgets/custom_scaffold.dart';

class AgroHomeScreen extends StatefulWidget {
  const AgroHomeScreen({super.key});

  @override
  State<AgroHomeScreen> createState() => _AgroHomeScreenState();
}

class _AgroHomeScreenState extends State<AgroHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Center(
            child: Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
          CustomCards(
            titleCard: "Tipo de Proyecto",
            imageCard: "assets/images/sector-agro/type_proyect_agro.webp",
            routeString: "/select",
            tag: "tipo_proyecto_agro",
          )
        ])));
  }
}
