import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryScreen extends StatelessWidget {
  static const String routeName = "/gallery_screen";
  GalleryScreen({super.key});

  List countsMain = [2, 2, 1, 1, 4, 1, 2, 2];
  List countsCross = [2, 1, 1, 1, 2, 1, 1, 2];
  List colorsCont = [Colors.red, Colors.green, Colors.amber, Colors.black];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.horizontalPadding,
            vertical: AppSize.verticalPadding + 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextAppbar(
                text: "Galareya",
              ),
              StaggeredGrid.count(
                  crossAxisCount: 6,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 4,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 6,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 4,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 6,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.amber,
                        )),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
