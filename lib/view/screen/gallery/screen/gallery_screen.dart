import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  static const String routeName = "/gallery_screen";
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.horizontalPadding,
            vertical: AppSize.verticalPadding + 30),
        child: Column(
          children: [
            TextAppbar(
              text: "Galareya",
            )
          ],
        ),
      ),
    );
  }
}
