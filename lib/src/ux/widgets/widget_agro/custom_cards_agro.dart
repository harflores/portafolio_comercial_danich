import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';
import '../../../utils/constants.dart' as constants;

class CustomCardsAgro extends StatefulWidget {
  final Object tag;
  final String titleCard;
  final String imageCard;
  final String routeString;
  const CustomCardsAgro({
    super.key,
    required this.titleCard,
    required this.imageCard,
    required this.routeString,
    required this.tag,
  });

  @override
  State<CustomCardsAgro> createState() => _CustomCardsAgroState();
}

class _CustomCardsAgroState extends State<CustomCardsAgro> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(widget.routeString);
          homeController.currentRoute.value = widget.routeString;
        },
        child: Container(
            margin: EdgeInsets.all(30),
            // height: 360,
            child: Card(
              surfaceTintColor: constants.primaryColor,
              color: constants.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              elevation: 10,
              shadowColor: constants.primaryColor,
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  Hero(
                      tag: widget.tag,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          height: 400,
                          width: double.infinity,
                          widget.imageCard,
                          fit: BoxFit.fitWidth,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.titleCard,
                      style: constants.cardTextStyle,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
