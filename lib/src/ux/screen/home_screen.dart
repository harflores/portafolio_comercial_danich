import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portafolio_comercial_danich/src/ux/widgets/custom_scaffold.dart';

import '../../controllers/home_controller.dart';
import '../widgets/custom_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController =
      Get.put(HomeController()); // Inicializa el controlador
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    homeController.currentRoute.value = "/";
    return CustomScaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              CustomContainer(
                pageController: _pageController,
                assetName: "assets/images/home/0.png",
                page: 0,
              ),
              CustomContainer(
                pageController: _pageController,
                assetName: "assets/images/home/2.png",
                page: 1,
              ),
              CustomContainer(
                pageController: _pageController,
                assetName: "assets/images/home/1.jpg",
                page: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
