import 'package:dataspin_academy/controller/service/api/url_photo.dart';
import 'package:dataspin_academy/controller/service/locator/service_locator.dart';
import 'package:dataspin_academy/controller/service/pdf_id_changer.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewScreen extends StatelessWidget {
  static const String routeName = "/pdf_view_screen";
  const PdfViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SfPdfViewer.network(
          UrlPhoto.url(
            locator.get<PdfIdChanger>().id.toString(),
          ),
        ),
      ),
    );
  }
}
