import 'package:dataspin_academy/view/screen/promo_code/widget/promocode_card_square.dart';
import 'package:flutter/material.dart';

class TestData extends StatelessWidget {
  static const String routeName = "/test_screen";
  const TestData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: PromoCodeCardSquare()),
    );
  }
}
