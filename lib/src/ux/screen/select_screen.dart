import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/select_controller.dart';
import '../widgets/custom_scaffold.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() {
    return _SelectScreenState();
  }
}

class _SelectScreenState extends State<SelectScreen> {
  final SelectController controller = Get.put(SelectController());
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
                  child: CarouselSlider(
                    items: controller.imagesCarousel,
                    options: CarouselOptions(
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(milliseconds: 2000),
                        height: MediaQuery.of(context).size.height),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_almacenaje_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_almacenaje_verde.png",
                      pageName: "/almacenaje",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_transportadores_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_transportadores_verde.png",
                      pageName: "/transportadores",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_trazabilidad_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_trazabilidad_verde.png",
                      pageName: "/trazabilidad",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_clasificacion_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_clasificacion_verde.png",
                      pageName: "/clasificacion",
                    ),
                    CustomButtom(
                      assetName1:
                          "assets/images/mn_interno/sistemas/btn_sis_paletizado_blanco.png",
                      assetName2:
                          "assets/images/mn_interno/sistemas/btn_sis_paletizado_verde.png",
                      pageName: "/paletizado",
                    ),
                    // CustomButtom(
                    //   assetName1:
                    //       "assets/images/mn_interno/sistemas/btn_sis_robotico_blanco.png",
                    //   assetName2:
                    //       "assets/images/mn_interno/sistemas/btn_sis_robotico_verde.png",
                    //   pageName: "/robotica",
                    // ),
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
  final String pageName;

  const CustomButtom({
    super.key,
    required this.assetName1,
    required this.assetName2,
    required this.pageName,
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
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (context) => Center(
              child: Container(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
          );
          Future.delayed(Duration(seconds: 1), () {
            selected.value = false;
            Get.offNamed(widget.pageName);
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
