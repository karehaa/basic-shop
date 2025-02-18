import 'dart:async';

import 'package:basic_shop1/pages/onboarding/onboarding.dart';
import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: ((context) => const Onboarding())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.primary[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/logo1.png',
              width: 132,
              height: 185,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Basic Shop",
              style: TextStyle(
                color: ColorPallete.white,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Fulfill Your Daily Needs",
              style: TextStyle(
                color: ColorPallete.white,
                fontSize: 16,
                fontWeight: FontWeight.w100,
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
