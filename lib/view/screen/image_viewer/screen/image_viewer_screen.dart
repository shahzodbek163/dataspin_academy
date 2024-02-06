import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/locator/service_locator.dart';
import 'package:dataspin_academy/controller/service/pdf_id_changer.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewerScreen extends StatelessWidget {
  static const String routeName = "/image_viewer_screen";
  const ImageViewerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Hero(
          tag: locator.get<PdfIdChanger>().id.toString(),
          child: PhotoView(
            imageProvider: CachedNetworkImageProvider(
              "http://dataspinacademy.uz/api/image/?id=${locator.get<PdfIdChanger>().id.toString()}",
            ),
          ),
        ),
      ),
    );
  }
}
