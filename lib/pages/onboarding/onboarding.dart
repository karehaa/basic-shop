import 'package:basic_shop1/pages/onboarding/onboarding1.dart';
import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    final double logoSize = screenWidth * 0.08;
    final double imageSize = screenWidth * 0.7;
    final double titleFontSize = screenWidth * 0.06;
    final double descriptionFontSize = screenWidth * 0.04;
    final double buttonFontSize = screenWidth * 0.05;
    final double stripeHeight = screenHeight * 0.01;

    return Scaffold(
      backgroundColor: ColorPallete.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/logo1.png',
                  width: logoSize,
                  height: logoSize,
                ),
                SizedBox(
                  width: screenWidth * 0.02,
                ),
                Text(
                  "Basic Shop",
                  style: TextStyle(
                    color: ColorPallete.black,
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Image.asset(
              'assets/image/onboarding1.png',
              width: imageSize,
              height: imageSize,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Expanded(
              child: Container(
                width: screenWidth,
                padding: EdgeInsets.all(
                  screenWidth * 0.1,
                ),
                decoration: BoxDecoration(
                  color: ColorPallete.primary[900],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fresh & Healthy Every Day",
                      style: TextStyle(
                        color: ColorPallete.white,
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Text(
                      "Dapatkan sayur segar langsung dari petani ke rumah Anda. Kualitas terbaik untuk hidup lebih sehat!",
                      style: TextStyle(
                        color: ColorPallete.white,
                        fontSize: descriptionFontSize,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Inter',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: screenHeight * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image/stripeYellow.png',
                          width: stripeHeight * 3,
                          height: stripeHeight,
                        ),
                        SizedBox(
                          width: screenWidth * 0.04,
                        ),
                        Image.asset(
                          'assets/image/stripeWhite.png',
                          width: stripeHeight * 3,
                          height: stripeHeight,
                        ),
                        SizedBox(
                          width: screenWidth * 0.04,
                        ),
                        Image.asset(
                          'assets/image/stripeWhite.png',
                          width: stripeHeight * 3,
                          height: stripeHeight,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Skip",
                          style: TextStyle(
                            color: ColorPallete.white,
                            fontSize: buttonFontSize,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.4,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Onboarding1(),
                            ),
                          ),
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: ColorPallete.secondary[500],
                              fontSize: buttonFontSize,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
