import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portafolio_comercial_danich/src/utils/utils.dart';
import 'package:portafolio_comercial_danich/src/ux/screen/home_screen.dart';

import '../utils/constants.dart' as constants;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: constants.titleApp.value,
        initialRoute: '/',
        getPages: Utils.routes,
        home: HomeScreen(),
      ),
    );
  }
}
