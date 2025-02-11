import 'package:get/get.dart';


import '../ux/screen/home_screen.dart';
import '../ux/screen/select_screen.dart';


class Utils {
  //Routes definicion de screens
  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/home', page: () => const HomeScreen()),
    GetPage(name: '/select', page: () => const SelectScreen()),
    
  ];
}
