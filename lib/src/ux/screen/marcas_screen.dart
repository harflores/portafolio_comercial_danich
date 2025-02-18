import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/marcas_controller.dart';
import '../widgets/custom_scaffold.dart';

class MarcasScreen extends StatefulWidget {
  const MarcasScreen({super.key});

  @override
  State<MarcasScreen> createState() => _MarcasScreenState();
}

class _MarcasScreenState extends State<MarcasScreen> {
  final marcasController = Get.put(MarcasController());
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fnd.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
            top: 70,
          ),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            children: [
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_cognex.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_hytrol.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_eurofork.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_libiao.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_intralox.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_dantrack.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_ambaflex.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_euroroll.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_flowsort.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_interroll.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_labelpack.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_pacline.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_qimarox.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child: Image.asset("assets/images/marcas/btn_serfruit.png")),
              GestureDetector(
                  onTap: () => Get.toNamed("/select"),
                  child:
                      Image.asset("assets/images/marcas/btn_southworth.png")),
            ],
          ),
        ),
      ),
    );
  }
}
