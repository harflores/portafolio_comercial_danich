import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
import '../../utils/constants.dart' as constants;

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String routeString;

  const CustomListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.routeString});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return ListTile(
      leading: Icon(icon, color: constants.primaryColor),
      title: Text(
        title,
        style: TextStyle(color: constants.blackColor),
      ),
      onTap: () {
        Get.toNamed(routeString);
        homeController.currentRoute.value = routeString;
      },
    );
  }
}
