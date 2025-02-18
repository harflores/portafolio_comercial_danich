import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';

import '../../controllers/sistemas_controller.dart';
import '../widgets/custom_scaffold.dart';
import '../../utils/constants.dart' as constants;

class TransportesScreen extends StatefulWidget {
  const TransportesScreen({super.key});

  @override
  State<TransportesScreen> createState() => _TransportesScreenState();
}

class _TransportesScreenState extends State<TransportesScreen> {
  final SistemasController sistemasController = Get.put(SistemasController());
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_sharp),
            label: "Proyectos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: "Videos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Casos de Estudio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dataset_outlined),
            label: "RFQ",
          ),
        ],
        useLegacyColorScheme: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: constants.whiteColor,
        unselectedItemColor: constants.whiteColor,
        backgroundColor: constants.secondaryColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sistemas/fnd_transportadores.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              constraints: BoxConstraints.expand(),
              margin:
                  EdgeInsets.only(top: 80, left: 680, right: 100, bottom: 50),
              child: MarkdownBody(
                data: constants.txtTransportes,
                styleSheet: MarkdownStyleSheet(
                    p: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                    textAlign: WrapAlignment.spaceEvenly),
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(),
              margin: EdgeInsets.only(
                  top: 480, left: 100, right: 1090, bottom: 150),
              child: Image.asset(
                'assets/images/txt_pallet.png',
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(),
              margin:
                  EdgeInsets.only(top: 480, left: 250, right: 720, bottom: 150),
              child: CarouselSlider(
                  items: sistemasController.marcasTransportadoresPallet,
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    autoPlayInterval: Duration(seconds: 2),
                    viewportFraction: 0.5,
                    aspectRatio: 2.0,
                    enlargeCenterPage: false,
                  )),
            ),
            Container(
              constraints: BoxConstraints.expand(),
              margin:
                  EdgeInsets.only(top: 550, left: 100, right: 1090, bottom: 80),
              child: Image.asset(
                'assets/images/txt_caja.png',
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(),
              margin:
                  EdgeInsets.only(top: 550, left: 250, right: 720, bottom: 80),
              child: CarouselSlider(
                items: sistemasController.marcasTransportadoresCajas.reversed.toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  autoPlayInterval: Duration(seconds: 2),
                  viewportFraction: 0.5,
                  aspectRatio: 2.0,
                  enlargeCenterPage: false,
                  reverse: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
