import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import 'custom_drawer.dart';
import '../../utils/constants.dart' as constants;

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  const CustomScaffold({
    super.key,
    required this.body, this.bottomNavigationBar,
  });

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}
class _CustomScaffoldState extends State<CustomScaffold> {
final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>(); // GlobalKey para el Scaffold
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.bottomNavigationBar == null ? null : widget.bottomNavigationBar,
        key: scaffoldKey,
      drawer: CustomDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: FloatingActionButton(
          onPressed: () {
            scaffoldKey.currentState
                ?.openDrawer(); // Abrimos el Drawer correctamente
          },
          backgroundColor: constants.secondaryColor,
          child: Icon(Icons.menu, color: Colors.white),
        ),
      ),
        body: widget.body);
  }
}
