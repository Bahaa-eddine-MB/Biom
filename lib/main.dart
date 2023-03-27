import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'client/pages/Getting Started/SplashScreen.dart';
import 'client/pages/Home/Plant/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biom',
      theme: ThemeData(
          primarySwatch: const MaterialColor(
        0xFF83BD75,
        <int, Color>{
          50: Color(0xFFF2FFE9),
          100: Color(0xFFD8FFC7),
          200: Color(0xFFB1FF91),
          300: Color(0xFF8AFF5C),
          400: Color(0xFF72FF3D),
          500: Color(0xFF83BD75),
          600: Color(0xFF5EB831),
          700: Color(0xFF4A9829),
          800: Color(0xFF367D22),
          900: Color(0xFF225217),
        },
      )),
      // initialBinding: HomeBinding(),
      home: const SplashScreen(),
    );
  }
}
