import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portafolio_comercial_danich/src/ux/screen/home_screen.dart';

import '../utils/constants.dart' as constants;
import 'widgets/drawer_custom.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: constants.titleApp.value,
        home: Scaffold(
          drawer: DrawerCustom(),
          appBar: AppBar(
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
          body: Scrollbar(
            thumbVisibility: true,
            thickness: 10,
            trackVisibility: true,
            child: SingleChildScrollView(
              child: const Center(
                child: HomeScreen(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
