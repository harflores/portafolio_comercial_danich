import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants.dart' as constants;

class CustomListTile extends StatelessWidget {
 final String title;
 final IconData icon;

  const CustomListTile({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(icon, color: constants.primaryColor),
      title:  Text(
        title,
        style: TextStyle(color:constants.blackColor),
      ),
      onTap: () {
        Get.back(); // Cierra el drawer
        // Agrega aquí la navegación
      },
    );
  }
}