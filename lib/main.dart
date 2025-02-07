import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:portafolio_comercial_danich/src/ux/app.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  );
  runApp(const App());
  FlutterNativeSplash.remove();
}
