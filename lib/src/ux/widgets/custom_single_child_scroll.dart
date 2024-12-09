import 'package:flutter/material.dart';

class CustomSingleChildScroll extends StatelessWidget {
  final Widget child;
  const CustomSingleChildScroll({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scrollbar(
        controller: ScrollController(),
        radius: Radius.circular(25),
        trackVisibility: true,
        thickness: 10,
        child: child,
      ),
    );
  }
}
