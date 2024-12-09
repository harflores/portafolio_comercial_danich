import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../utils/constants.dart' as constants;

class CustomCards extends StatefulWidget {
  final Object tag;
  final String titleCard;
  final String imageCard;
  final String routeString;
  const CustomCards({
    super.key,
    required this.titleCard,
    required this.imageCard,
    required this.routeString,
    required this.tag,
  });

  @override
  State<CustomCards> createState() => _CustomCardsState();
}

class _CustomCardsState extends State<CustomCards> {
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
            child: Card(
          color: constants.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          elevation: 10,
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
                      height: 300,
                      width: 400,
                      widget.imageCard,
                      fit: BoxFit.cover,
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
