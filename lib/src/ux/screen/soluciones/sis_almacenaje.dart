import 'package:flutter/widgets.dart';

import '../../widgets/custom_scaffold.dart';
import '../../widgets/custom_single_child_scroll.dart';

class SisAlmacenajeScreen extends StatelessWidget {
  const SisAlmacenajeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomSingleChildScroll(
        child: Center(
          child: Text("Sistema Visión Artificial"),
        ),
      ),
    );
  }
}
