import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SistemasController extends GetxController {
  final List<Widget> marcasAlmacenajePallet = [
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_eurofork.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_cognex.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_euroroll.png', scale: 4),
    ),
  ];

  final List<Widget> marcasAlmacenajeCajas = [
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_cognex.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_euroroll.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_eurofork.png', scale: 4),
    ),
  ];

  final List<Widget> marcasTransportadoresPallet = [
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_hytrol.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_interroll.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_qimarox.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_labelpack.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_cognex.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_euroroll.png', scale: 4),
    ),
  ];

  final List<Widget> marcasTransportadoresCajas = [
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_hytrol.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_interroll.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_qimarox.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_labelpack.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_ambaflex.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_pacline.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_southworth.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_flowsort.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_intralox.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_cognex.png', scale: 4),
    ),
  ];

  final List<Widget> marcasTrazabilidad = [
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_dantrack.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_cognex.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_labelpack.png', scale: 4),
    ),
  ];

  final List<Widget> marcasClasificacion = [
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_libiao.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_intralox.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_hytrol.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_interroll.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_cognex.png', scale: 4),
    ),
  ];
  
  final List<Widget> marcasPaletizado = [
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_serfruit.png', scale: 4),
    ),
  
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_southworth.png', scale: 4),
    ),
    GestureDetector(
      onTap: () => Get.toNamed("/marcas"),
      child: Image.asset('assets/images/marcas/btn_cognex.png', scale: 4),
    ),
  ];
}
