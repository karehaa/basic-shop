import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPallete.white,
      body: SafeArea(
          child: Column(
        children: [Text("data")],
      )),
    );
  }
}
