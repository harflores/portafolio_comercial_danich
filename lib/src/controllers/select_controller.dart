import 'package:get/get.dart';

class SelectController extends GetxController {
  RxString imgSelected =
      "assets/images/mn_interno/sistemas/img_sis_almacenaje.png".obs;
  var selected = false.obs;

  void selectButton(){
   selected.value = false;

  }
}
