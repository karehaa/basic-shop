import 'package:basic_shop1/pages/shop/shop_page.dart';
import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({
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
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  bool isNotBuying = true;
  int itemCount = 1;

  void addCount() {
    setState(() {
      itemCount++;
    });
  }

  void subtractCount() {
    if (itemCount > 0) {
      setState(() {
        itemCount--;
      });
    }
  }

  void toggleBuying() {
    setState(() {
      isNotBuying = !isNotBuying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: ColorPallete.primary[900],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopPage(),
                ),
              ),
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: ColorPallete.white,
                size: 18.0,
              ),
            ),
            title: Text(
              isNotBuying ? "Detail Barang" : "Beli Sekarang",
              style: const TextStyle(
                color: ColorPallete.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 31,
                bottom: 31 + 70,
                left: 40,
                right: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      width: 322,
                      height: 366,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                widget.itemImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 31),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            widget.itemName,
                            style: const TextStyle(
                              color: ColorPallete.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            widget.itemPrice,
                            style: TextStyle(
                              color: ColorPallete.secondary[700],
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ReadMoreText(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.",
                            trimLines: 5,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: "\nBaca lebih lanjut",
                            trimExpandedText: "\nSembunyikan",
                            colorClickableText: ColorPallete.primary[900],
                            style: const TextStyle(
                              color: ColorPallete.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/icon_bcc.png",
                                  width: 36,
                                  height: 36,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  "Basic Vegetables",
                                  style: TextStyle(
                                    color: ColorPallete.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/image/star.jpg',
                                  width: 22,
                                  height: 21,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  widget.itemRating,
                                  style: TextStyle(
                                    color: ColorPallete.secondary[500],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!isNotBuying)
            AnimatedContainer(
              duration: const Duration(milliseconds: 90),
              height: double.infinity,
              width: double.infinity,
              color: ColorPallete.white.withOpacity(0.6),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: isNotBuying ? 80 : 144,
              decoration: BoxDecoration(
                  color: ColorPallete.primary[900],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(16, 16),
                      topRight: Radius.elliptical(16, 16))),
              child: isNotBuying
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (isNotBuying)
                          Container(
                            width: 45,
                            height: 44,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 13.67,
                            ),
                            decoration: BoxDecoration(
                              color: ColorPallete.secondary[500],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                              'assets/image/cart_icon.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                          ),
                        GestureDetector(
                          onTap: () => toggleBuying(),
                          child: Container(
                            width: 274,
                            height: 44,
                            decoration: BoxDecoration(
                              color: ColorPallete.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Text(
                              "Beli Sekarang",
                              style: TextStyle(
                                color: ColorPallete.primary[900],
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter',
                              ),
                            )),
                          ),
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Jumlah",
                                style: TextStyle(
                                  color: ColorPallete.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => subtractCount(),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: ColorPallete.secondary[500],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: const Center(
                                          child: Text(
                                        "-",
                                        style: TextStyle(
                                          color: ColorPallete.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Inter',
                                        ),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 28,
                                  ),
                                  Text(
                                    "$itemCount",
                                    style: const TextStyle(
                                      color: ColorPallete.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 28,
                                  ),
                                  GestureDetector(
                                    onTap: () => addCount(),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: ColorPallete.secondary[500],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: const Center(
                                          child: Text(
                                        "+",
                                        style: TextStyle(
                                          color: ColorPallete.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Inter',
                                        ),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () => toggleBuying(),
                            child: Container(
                              width: 332,
                              height: 44,
                              decoration: BoxDecoration(
                                color: ColorPallete.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                  child: Text(
                                "Beli Sekarang",
                                style: TextStyle(
                                  color: ColorPallete.primary[900],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Inter',
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
