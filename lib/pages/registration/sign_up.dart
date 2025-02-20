import 'package:basic_shop1/pages/registration/sign_in.dart';
import 'package:basic_shop1/pages/widgets/registration_button.dart';
import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignIn();
}

class _SignIn extends State<SignUp> {
  bool passwordIsShown = false;
  bool confirmPasswordIsShown = false;

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
                    "Daftar",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    "Buat akun baru kamu!",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: subtitleFontSize,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama Lengkap",
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
                          labelText: "ex: Tristan Al Harrish Basori",
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
                          labelText: "ex: your.email@gmail.com",
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
                        "No Handphone",
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
                          labelText: "ex: 0812345678",
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
                          labelText: "**********",
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
                      SizedBox(height: screenHeight * 0.03),
                      Text(
                        "Konfirmasi Kata Sandi",
                        style: TextStyle(
                          color: ColorPallete.black,
                          fontSize: textFieldFontSize,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        obscureText: !confirmPasswordIsShown,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: "**********",
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
                              confirmPasswordIsShown
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: ColorPallete.secondary[600],
                            ),
                            onPressed: () {
                              setState(() {
                                confirmPasswordIsShown =
                                    !confirmPasswordIsShown;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  const RegistrationButton(buttonText: "Daftar"),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah punya punya akun? ",
                        style: TextStyle(
                          color: ColorPallete.black,
                          fontSize: textFieldFontSize * 0.8,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignIn())),
                        child: Text(
                          "Masuk",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
