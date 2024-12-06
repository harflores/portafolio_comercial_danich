import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import 'drawer_custom.dart';
import '../../utils/constants.dart' as constants;

class CustomScaffold extends StatefulWidget {
  final Widget body;
  const CustomScaffold({
    super.key,
    required this.body,
  });

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerCustom(),
        appBar: AppBar(
          actions: [
            if (homeController.currentRoute.value != '/')
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: constants.whiteColor,
                ), // Botón de retroceso
                onPressed: () {
                  Navigator.of(context).pop(); // Navegar hacia atrás
                },
              ),
          ],
          elevation: 1,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: constants.circularLogo,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Text(
            constants.titleApp.value,
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: constants.primaryColor,
        ),
        body: widget.body);
  }
}
