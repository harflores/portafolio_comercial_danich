import 'package:flutter/material.dart';

import '../../utils/constants.dart' as constants;
import 'custom_list_tile.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var divider = Divider(
      thickness: 3,
    );
    return Drawer(
      backgroundColor: constants.whiteColor,
      elevation: 20,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: constants.primaryColor,
            ),
            child: Column(
              children: [
                Image.asset(
                  constants.urlCircularLogo,
                  width: 50,
                ),
                const SizedBox(height: 5),
                Text(
                  constants.titleApp.value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomListTile(
            title: 'Inicio',
            icon: Icons.home,
            routeString: '/home',
          ),
          divider,
          CustomListTile(
            title: 'Agroindustria',
            icon: Icons.conveyor_belt,
            routeString: '/agroHome',
          ),
          divider,
          CustomListTile(
            title: 'Logistica',
            icon: Icons.conveyor_belt,
            routeString: '/select',
          ),
          divider,
          CustomListTile(
            title: 'Otras Industrias',
            icon: Icons.conveyor_belt,
            routeString: '/select',
          ),
          divider,
        ],
      ),
    );
  }
}
