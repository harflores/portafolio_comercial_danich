import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SelectController extends GetxController {
  RxString imgSelected =
      "assets/images/mn_interno/sistemas/img_sis_almacenaje.png".obs;
  var selected = false.obs;


  List<Widget> imagesCarousel = [
    Image.asset("assets/images/mn_interno/sistemas/img_sis_almacenaje.png"),
    Image.asset("assets/images/mn_interno/sistemas/img_sis_transportadores.png"),
    Image.asset("assets/images/mn_interno/sistemas/img_sis_trazabilidad.png"),
    Image.asset("assets/images/mn_interno/sistemas/img_sis_clasificacion.png"),
    Image.asset("assets/images/mn_interno/sistemas/img_sis_paletizado.png"),
    Image.asset("assets/images/mn_interno/sistemas/img_sis_robotico.png"),

    
  ];

  void selectButton(){
   selected.value = false;

  }
}
