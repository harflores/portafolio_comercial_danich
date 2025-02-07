import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../utils/constants.dart' as constants;
import '../utils/utils.dart';
import 'screen/home_screen.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        scrollBehavior: ScrollBehavior(),
        debugShowCheckedModeBanner: false,
        title: constants.titleApp.value,
        initialRoute: '/',
        getPages: Utils.routes,
        home: HomeScreen(),
      ),
    );
  }
}
