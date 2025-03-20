import 'package:basic_shop1/pages/shop/item_page.dart';
import 'package:flutter/material.dart';
import 'package:basic_shop1/themes/color_pallete.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({
    super.key,
    required this.itemImage,
    required this.itemName,
    required this.itemPrice,
    required this.itemRating,
  });

  final String itemImage;
  final String itemName;
  final String itemPrice;
  final String itemRating;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    final double paddingHorizontal = screenWidth * 0.03;
    final double paddingVertical = screenWidth * 0.04;
    final double itemNameFontSize = screenWidth * 0.035;
    final double itemPriceFontSize = screenWidth * 0.03;
    final double itemRatingFontSize = screenWidth * 0.03;
    final double starIconSize = screenWidth * 0.04;
    final double spacingSmall = screenWidth * 0.02;
    final double spacingMedium = screenWidth * 0.03;

    final double imageWidth = screenWidth * 0.35;
    final double imageHeight = screenWidth * 0.40;

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemPage(
            itemImage: itemImage,
            itemName: itemName,
            itemPrice: itemPrice,
            itemRating: itemRating,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: ColorPallete.primary[800]!,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                itemImage,
                width: imageWidth,
                height: imageHeight,
              ),
            ),
            SizedBox(
              height: spacingSmall,
            ),
            Text(
              itemName,
              style: TextStyle(
                color: ColorPallete.black,
                fontSize: itemNameFontSize,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(
              height: spacingMedium,
            ),
            Row(
              children: [
                Text(
                  itemPrice,
                  style: TextStyle(
                    color: ColorPallete.secondary[700],
                    fontSize: itemPriceFontSize,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: spacingMedium * 3.27,
                ),
                Image.asset(
                  'assets/image/star.jpg',
                  width: starIconSize,
                  height: starIconSize,
                ),
                SizedBox(
                  width: spacingSmall,
                ),
                Text(
                  itemRating,
                  style: TextStyle(
                    color: ColorPallete.grey,
                    fontSize: itemRatingFontSize,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Nunito',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
