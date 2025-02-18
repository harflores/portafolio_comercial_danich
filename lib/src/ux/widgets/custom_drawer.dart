import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart' as constants;

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var divider = Divider(
      thickness: 1,
    );
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      width: 400,
      backgroundColor: constants.whiteColor,
      elevation: 20,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: constants.primaryColor,
              image: DecorationImage(
                image: AssetImage("assets/images/drawer/header_drawer.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: null,
          ),
          ButtonTheme(
            child: GestureDetector(
              child: Image.asset("assets/images/drawer/btn_ini_drawer.png"),
              onTap: () => Get.offNamed("/"),
            ),
            hoverColor: constants.primaryColor,
            splashColor: constants.primaryColor,
          ),
          divider,
          ButtonTheme(
            child: GestureDetector(
              child: Image.asset("assets/images/drawer/btn_agro_drawer.png"),
              onTap: () => Get.toNamed("/select"),
            ),
            hoverColor: constants.primaryColor,
            splashColor: constants.primaryColor,
          ),
          divider,
          ButtonTheme(
            child: GestureDetector(
              child: Image.asset("assets/images/drawer/btn_log_drawer.png"),
              onTap: () => Get.toNamed("/select"),
            ),
            hoverColor: constants.primaryColor,
            splashColor: constants.primaryColor,
          ),
          divider,
          ButtonTheme(
            child: GestureDetector(
              child: Image.asset("assets/images/drawer/btn_ot_drawer.png"),
              onTap: () => Get.toNamed("/select"),
            ),
            hoverColor: constants.primaryColor,
            splashColor: constants.primaryColor,
          ),
          divider,
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/drawer/footer_drawer.png"),
              fit: BoxFit.contain,
            )),
            // width: 350,
            height: 260,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
