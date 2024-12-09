import 'package:flutter/material.dart';

import '../../widgets/custom_scaffold.dart';
import '../../widgets/custom_single_child_scroll.dart';
import '../../widgets/widget_agro/custom_cards_agro.dart';

class AgroHomeScreen extends StatefulWidget {
  const AgroHomeScreen({super.key});

  @override
  State<AgroHomeScreen> createState() => _AgroHomeScreenState();
}

class _AgroHomeScreenState extends State<AgroHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomSingleChildScroll(
        child: Center(
          child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                CustomCardsAgro(
                  titleCard: "Tipo de Proyecto",
                  imageCard: "assets/images/sector-agro/type_proyect_agro.webp",
                  routeString: "/select",
                  tag: "tipo_proyecto_agro",
                ),
                CustomCardsAgro(
                  titleCard: "Videos",
                  imageCard: "assets/images/globales/img-video.jpg",
                  routeString: "/select",
                  tag: "video_proyecto_agro",
                ),
                CustomCardsAgro(
                  titleCard: "Brochure",
                  imageCard: "assets/images/globales/brochure.webp",
                  routeString: "/select",
                  tag: "brochure_proyecto_agro",
                ),
              ]),
        ),
      ),
    );
  }
}
