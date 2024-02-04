import 'package:dataspin_academy/controller/provider/for_pdf_view_provider.dart';
import 'package:dataspin_academy/controller/service/api/url_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewScreen extends StatelessWidget {
  static const String routeName = "/pdf_view_screen";
  const PdfViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SfPdfViewer.network(UrlPhoto.url(
                context.read<ForPdfViewProvider>().photoId.toString()))));
  }
}
