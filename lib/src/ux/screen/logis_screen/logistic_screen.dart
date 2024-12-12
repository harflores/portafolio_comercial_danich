import 'package:flutter/material.dart';

import '../../widgets/custom_scaffold.dart';
import '../../widgets/custom_single_child_scroll.dart';
import '../../widgets/widget_logis/custom_cards_logis.dart';

class LogisticScreen extends StatefulWidget {
  const LogisticScreen({super.key});

  @override
  State<LogisticScreen> createState() => _LogisticScreenState();
}

class _LogisticScreenState extends State<LogisticScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: CustomSingleChildScroll(
      child: Center(
        child: Wrap(
          children: [
            CustomCardsLogistic(
                titleCard: "Brochure",
                imageCard: "assets/icon/icon.png",
                routeString: "/brochureLogistic",
                tag: "brochure"),
            CustomCardsLogistic(
              titleCard: "Sorters",
              routeString: "/select",
              tag: "sorters",
            ),
            CustomCardsLogistic(
              titleCard: "Transportadores",
              routeString: "/select",
              tag: "transportadores",
            ),
            CustomCardsLogistic(
              titleCard: "Visión Artificial",
              routeString: "/select",
              tag: "vision_artificial",
            ),
            CustomCardsLogistic(
              titleCard: "Almacenes Automaticos",
              routeString: "/select",
              tag: "almacenes_automaticos",
            ),
          ],
        ),
      ),
    ));
  }
}
