
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainer extends StatelessWidget {
  final String assetName;
  final int page;
  const CustomContainer({
    super.key,
    required PageController pageController,
    required this.assetName,
    required this.page,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final double _scale = 1.9;
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetName),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 460, right: 960),
            child: GestureDetector(
              onTap: () {
                switch (page){
                  case 0:
                    Get.toNamed("/select");
                    break;
                  case 1:
                    Get.toNamed("/select");
                    break;
                  case 2:
                    Get.toNamed("/select");
                    break;
                }
              },
              child: Image.asset(
                "assets/images/home/btn_mas.png",
                scale: _scale,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => _pageController.animateToPage(
                    0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
                  child: Image.asset(
                    page == 0
                        ? "assets/images/home/btn_agro_on.png"
                        : "assets/images/home/btn_agro_off.png",
                    scale: _scale,
                  ),
                ),
                GestureDetector(
                  onTap: () => _pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
                  child: Image.asset(
                    page == 1
                        ? "assets/images/home/btn_log_on.png"
                        : "assets/images/home/btn_log_off.png",
                    scale: _scale,
                  ),
                ),
                GestureDetector(
                  onTap: () => _pageController.animateToPage(
                    2,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
                  child: Image.asset(
                    page == 2
                        ? "assets/images/home/btn_ot_on.png"
                        : "assets/images/home/btn_ot_off.png",
                    scale: _scale,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}