import 'package:get/get.dart';


import '../ux/screen/almacenaje_screen.dart';
import '../ux/screen/clasificacion_screen.dart';
import '../ux/screen/home_screen.dart';
import '../ux/screen/marcas_screen.dart';
import '../ux/screen/paletizado_screen.dart';
import '../ux/screen/robotica_screen.dart';
import '../ux/screen/select_screen.dart';
import '../ux/screen/transportes_screen.dart';
import '../ux/screen/trazabilidad_screen.dart';


class Utils {
  //Routes definicion de screens
  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/home', page: () => const HomeScreen()),
    GetPage(name: '/select', page: () => const SelectScreen()),
    GetPage(name: '/almacenaje', page: () => const AlmacenajeScreen()),
    GetPage(name: '/transportadores', page: () => const TransportesScreen()),
    GetPage(name: '/trazabilidad', page: () => const TrazabilidadScreen()),
    GetPage(name: '/clasificacion', page: () => const ClasificacionScreen()),
    GetPage(name: '/paletizado', page: () => const PaletizadoScreen()),
    GetPage(name: '/robotica', page: () => const RoboticaScreen()),
    GetPage(name: '/marcas', page: () => const MarcasScreen(), transition: Transition.zoom),
    
  ];
}
