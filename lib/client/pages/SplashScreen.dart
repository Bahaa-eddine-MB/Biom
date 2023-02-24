import 'dart:async';
import 'package:biome/client/pages/OnboardingPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _Timer();
    _navigation();
  }

  // ignore: non_constant_identifier_names
  _Timer() async {
     Timer(const Duration(milliseconds: 10), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  _navigation() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Get.to(() => const OnboardingPage(),
        duration: const Duration(milliseconds: 1500),
        transition: Transition.fade);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0,
        duration: const Duration(milliseconds: 1200),
        child: const Center(
          child: Image(
            width: 180,
            image: AssetImage(
              'images/logo.png',
            ),
          ),
        ),
      ),
    );
  }
}
