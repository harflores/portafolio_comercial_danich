import 'package:flutter/material.dart';
import 'package:portafolio_comercial_danich/src/ux/widgets/custom_scaffold.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Center(
      child: Text("SelectScreen"),
    ));
  }
}
