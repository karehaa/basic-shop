import 'package:basic_shop1/pages/widgets/registration_button.dart';
import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Masuk",
                  style: TextStyle(
                    color: ColorPallete.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  "Selamat Datang Kembali",
                  style: TextStyle(
                    color: ColorPallete.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(
                  height: 77,
                ),
                Image.asset(
                  'assets/image/logo1.png',
                  width: 90,
                  height: 126.46,
                ),
                const SizedBox(
                  height: 77,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Username",
                      style: TextStyle(
                        color: ColorPallete.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: ColorPallete.primary[800],
                          fontSize: 16,
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
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "Kata Sandi",
                      style: TextStyle(
                        color: ColorPallete.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: ColorPallete.primary[800],
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                        filled: true,
                        fillColor:
                            ColorPallete.primary[50], // Light background color
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              color: ColorPallete.primary[900]!, width: 1),
                        ),
                        suffixIcon: Icon(Icons.visibility_off,
                            color: ColorPallete.secondary[600]),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Lupa password?",
                        style: TextStyle(
                          color: ColorPallete.primary[900],
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 77,
                ),
                const RegistrationButton(buttonText: "Masuk"),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Belum punya akun? ",
                      style: TextStyle(
                        color: ColorPallete.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Text(
                      "Daftar",
                      style: TextStyle(
                        color: ColorPallete.primary[900],
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
