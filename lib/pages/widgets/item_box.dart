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
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    // Define responsive dimensions
    final double paddingHorizontal = screenWidth * 0.03; // 3% of screen width
    final double paddingVertical = screenWidth * 0.04; // 2% of screen width
    final double itemNameFontSize = screenWidth * 0.035; // 3.5% of screen width
    final double itemPriceFontSize = screenWidth * 0.03; // 3% of screen width
    final double itemRatingFontSize = screenWidth * 0.03; // 3% of screen width
    final double starIconSize = screenWidth * 0.04; // 4% of screen width
    final double spacingSmall = screenWidth * 0.02; // 2% of screen width
    final double spacingMedium = screenWidth * 0.03; // 4% of screen width

    return Container(
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
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align children to the left
        children: [
          Image.asset(
            itemImage,
            width: 132,
            height: 142,
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
            textAlign: TextAlign.left, // Align text to the left
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
              ),
              SizedBox(
                width: spacingMedium * 3.27, // Adjust spacing dynamically
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
    );
  }
}
