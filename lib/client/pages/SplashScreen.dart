import 'package:biome/client/pages/Auth/LogingPage.dart';
import 'package:biome/client/pages/OnboardingPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigation();
  }

  _navigation() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Get.to(() => const OnboardingPage(),
        duration: const Duration(milliseconds: 1500),
        transition: Transition.fade);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          width: 180,
          image: AssetImage("images/logo.png")),
      ),
    );
  }
}
