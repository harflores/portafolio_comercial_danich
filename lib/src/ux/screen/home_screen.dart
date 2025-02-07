import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../utils/constants.dart' as constants;
import '../widgets/custom_container.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController =
      Get.put(HomeController()); // Inicializa el controlador
  final PageController _pageController = PageController();
  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>(); // GlobalKey para el Scaffold
  @override
  Widget build(BuildContext context) {
    homeController.currentRoute.value = "/";
    return Scaffold(
      key: _scaffoldKey, // Asignamos la clave al Scaffold
      drawer: CustomDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: FloatingActionButton(
          onPressed: () {
            _scaffoldKey.currentState
                ?.openDrawer(); // Abrimos el Drawer correctamente
          },
          backgroundColor: constants.secondaryColor,
          child: Icon(Icons.menu, color: Colors.white),
        ),
      ),
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

