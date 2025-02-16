import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import 'custom_drawer.dart';
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
        drawer: CustomDrawer(),
        appBar: AppBar(
          leadingWidth: 100,
          toolbarHeight: 100,
          actions: [
            if (homeController.currentRoute.value != '/')
              Container(
                padding: EdgeInsets.all(10),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: constants.whiteColor,
                  ), // Botón de retroceso
                  onPressed: () {
                    Navigator.of(context).pop(); // Navegar hacia atrás
                  },
                ),
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
