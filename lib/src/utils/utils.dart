import 'package:get/get.dart';

import '../ux/screen/agro_screen/agro_home_screen.dart';
import '../ux/screen/home_screen.dart';
import '../ux/screen/logis_screen/brochure_screen.dart';
import '../ux/screen/logis_screen/logistic_screen.dart';
import '../ux/screen/select_screen.dart';
import '../ux/screen/soluciones/sis_almacenaje.dart';

class Utils {
  //Routes definicion de screens
  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/home', page: () => const HomeScreen()),
    GetPage(name: '/select', page: () => const SelectScreen()),
    GetPage(name: '/agroHome', page: () => const AgroHomeScreen()),
    GetPage(name: '/logisHome', page: () => const LogisticScreen()),
    GetPage(name: '/brochureLogistic', page: () => const BrochureScreen()),
    GetPage(name: '/sisAlmacenaje', page: () => const SisAlmacenajeScreen()),
  ];
}
