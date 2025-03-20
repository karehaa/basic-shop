import 'package:basic_shop1/pages/widgets/item_box.dart';
import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  bool passwordIsShown = false;

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    // Define responsive padding and font sizes
    final double horizontalPadding = screenWidth * 0.05;
    final double verticalPadding = screenHeight * 0.03;

    // Responsive font sizes
    final double titleFontSize = screenWidth * 0.06;
    final double subtitleFontSize = screenWidth * 0.04;
    final double searchFontSize = screenWidth * 0.035;

    // Responsive image size
    final double avatarSize = screenWidth * 0.1;

    // Responsive item box spacing
    final double itemSpacing = screenWidth * 0.05;

    return Scaffold(
      backgroundColor: ColorPallete.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    left: horizontalPadding,
                    right: horizontalPadding,
                    top: verticalPadding - 20,
                    bottom: verticalPadding + 70,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hola! Supernova",
                                  style: TextStyle(
                                    color: ColorPallete.black,
                                    fontSize: titleFontSize,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                                Text(
                                  "Siap menjalani harimu?",
                                  style: TextStyle(
                                    color: ColorPallete.black,
                                    fontSize: subtitleFontSize,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Inter',
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.3,
                          ),
                          Image.asset(
                            'assets/image/avatar.jpg',
                            width: avatarSize,
                            height: avatarSize,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
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
                            fontSize: searchFontSize,
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
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const ItemBox(
                                itemImage: 'assets/image/jamur_enoki.jpg',
                                itemName: "Jamur Enoki",
                                itemPrice: "Rp. 3.500",
                                itemRating: "5.0",
                              ),
                              SizedBox(
                                width: itemSpacing,
                              ),
                              const ItemBox(
                                itemImage: 'assets/image/kol.jpg',
                                itemName: "Kol Segar 500gr",
                                itemPrice: "Rp. 6.000",
                                itemRating: "4.7",
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const ItemBox(
                                itemImage: 'assets/image/kentang.jpg',
                                itemName: "Kentang 500gr",
                                itemPrice: "Rp. 8.000",
                                itemRating: "4.8",
                              ),
                              SizedBox(
                                width: itemSpacing,
                              ),
                              const ItemBox(
                                itemImage: 'assets/image/wortel.jpg',
                                itemName: "Wortel 500gr",
                                itemPrice: "Rp. 10.000",
                                itemRating: "4.6",
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const ItemBox(
                                itemImage: 'assets/image/bumbu_sayur_sop.jpg',
                                itemName: "Bumbu Sayur Sop",
                                itemPrice: "Rp. 5.000",
                                itemRating: "4.5",
                              ),
                              SizedBox(
                                width: itemSpacing,
                              ),
                              const ItemBox(
                                itemImage: 'assets/image/seledri.jpg',
                                itemName: "Seledri 500gr",
                                itemPrice: "Rp. 12.000",
                                itemRating: "4.9",
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -3,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/image/bottom_bar_home.png',
                width: screenWidth,
                height: 75,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
