import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _SignIn();
}

class _SignIn extends State<ShopPage> {
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
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hola! Supernova",
                            style: TextStyle(
                              color: ColorPallete.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter',
                            ),
                          ),
                          Text(
                            "Siap menjalani harimu?",
                            style: TextStyle(
                              color: ColorPallete.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Inter',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 107,
                      ),
                      Image.asset(
                        'assets/image/avatar.jpg',
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: ColorPallete.primary[900],
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: "Cari barang apa nih?",
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
                        ),
                      ),
                    ),
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
