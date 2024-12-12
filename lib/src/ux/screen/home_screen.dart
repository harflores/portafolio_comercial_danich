import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../widgets/custom_cards.dart';
import '../widgets/custom_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController =
      Get.put(HomeController()); // Inicializa el controlador

  @override
  Widget build(BuildContext context) {
    homeController.currentRoute.value = "/";
    return CustomScaffold(
        body: Center(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: [
          CustomCards(
            titleCard: 'Agroindustria',
            tag: 'Agroindistria',
            imageCard: 'assets/images/sector-agro/card-agro.webp',
            routeString: "/agroHome",
          ),
          CustomCards(
            titleCard: 'Logistica',
            tag: 'Logistica',
            imageCard: 'assets/images/sector-logis/card-logis.webp',
            routeString: "/logisHome",
          ),
          CustomCards(
            titleCard: 'Otras Industrias',
            tag: 'otras industrias',
            routeString: "/select",
            imageCard: 'assets/images/sector-alim/card-alim.webp',
          ),
          // Agrega más CustomCards aquí si es necesario
        ],
      ),
    ));
  }
}
