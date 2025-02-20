import 'package:basic_shop1/pages/widgets/registration_button.dart';
import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  bool passwordIsShown = false;

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    // Define responsive padding and font sizes
    final double horizontalPadding = screenWidth * 0.1;
    final double verticalPadding = screenHeight * 0.05;
    final double titleFontSize = screenWidth * 0.06;
    final double subtitleFontSize = screenWidth * 0.04;
    final double textFieldFontSize = screenWidth * 0.035;
    final double logoSize = screenWidth * 0.2;

    return Scaffold(
      backgroundColor: ColorPallete.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    "Masuk",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    "Selamat Datang Kembali",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: subtitleFontSize,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.11),
                  Image.asset(
                    'assets/image/logo1.png',
                    width: logoSize,
                    height: logoSize * 1.4,
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                          color: ColorPallete.black,
                          fontSize: textFieldFontSize,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: "Username",
                          labelStyle: TextStyle(
                            color: ColorPallete.primary[800],
                            fontSize: textFieldFontSize,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Inter',
                          ),
                          filled: true,
                          fillColor: ColorPallete.primary[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: ColorPallete.primary[900]!,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Text(
                        "Kata Sandi",
                        style: TextStyle(
                          color: ColorPallete.black,
                          fontSize: textFieldFontSize,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        obscureText: !passwordIsShown,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: ColorPallete.primary[800],
                            fontSize: textFieldFontSize,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Inter',
                          ),
                          filled: true,
                          fillColor: ColorPallete.primary[50],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: ColorPallete.primary[900]!,
                              width: 1,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordIsShown
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: ColorPallete.secondary[600],
                            ),
                            onPressed: () {
                              setState(() {
                                passwordIsShown = !passwordIsShown;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Lupa password?",
                          style: TextStyle(
                            color: ColorPallete.primary[900],
                            fontSize: textFieldFontSize * 0.8,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  const RegistrationButton(buttonText: "Masuk"),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum punya akun? ",
                        style: TextStyle(
                          color: ColorPallete.black,
                          fontSize: textFieldFontSize * 0.8,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                      ),
                      Text(
                        "Daftar",
                        style: TextStyle(
                          color: ColorPallete.primary[900],
                          fontSize: textFieldFontSize * 0.8,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
