import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portafolio_comercial_danich/src/controllers/select_controller.dart';

import '../widgets/custom_drawer.dart';
import '../../utils/constants.dart' as constants;

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  // final PageController _pageController = PageController(
  //     viewportFraction: 0.8); // Controlador con efecto de carrusel

  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>(); // GlobalKey para el Scaffold
  final SelectController controller = Get.put(SelectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Asignamos la clave al Scaffold
      drawer: CustomDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: FloatingActionButton(
          onPressed: () {
            _scaffoldKey.currentState
                ?.openDrawer(); // Abrimos el Drawer correctamente
          },
          backgroundColor: constants.secondaryColor,
          child: Icon(Icons.menu, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/mn_interno/fnd_interno.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 0,
            children: [
              Center(
                child: Container(
                    padding: EdgeInsets.only(top: 130, left: 30),
                    width: 500,
                    child: Obx(
                      () => Image.asset(controller.imgSelected.value),
                    )),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Column(
                  children: [
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_almacenaje_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_almacenaje_verde.png",
                      imgSelected:
                          "assets/images/mn_interno/sistemas/img_sis_almacenaje.png",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_transportadores_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_transportadores_verde.png",
                      imgSelected:
                          "assets/images/mn_interno/sistemas/img_sis_transportadores.png",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_trazabilidad_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_trazabilidad_verde.png",
                      imgSelected:
                          "assets/images/mn_interno/sistemas/img_sis_trazabilidad.png",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_clasificacion_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_clasificacion_verde.png",
                      imgSelected:
                          "assets/images/mn_interno/sistemas/img_sis_clasificacion.png",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_paletizado_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_paletizado_verde.png",
                      imgSelected:
                          "assets/images/mn_interno/sistemas/img_sis_paletizado.png",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_robotico_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_robotico_verde.png",
                      imgSelected:
                          "assets/images/mn_interno/sistemas/img_sis_robotico.png",
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtom extends StatefulWidget {
  final String assetName1;
  final String assetName2;
  final String imgSelected;
  const CustomButtom({
    super.key,
    required this.assetName1,
    required this.assetName2,
    required this.imgSelected,
  });

  @override
  State<CustomButtom> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  @override
  @override
  Widget build(BuildContext context) {
    var selected = false.obs;

    return Obx(() => GestureDetector(
        onTap: () {
          selected.value = true;
          Get.find<SelectController>().imgSelected.value = widget.imgSelected;
          Future.delayed(Duration(seconds: 1), () {
            Get.toNamed('/home');
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 10,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          transformAlignment: Alignment.center,
          width: 600,
          height: 100,
          child: Image.asset(
            selected.value == false ? widget.assetName1 : widget.assetName2,
            fit: BoxFit.cover,
          ),
        )));
  }
}
