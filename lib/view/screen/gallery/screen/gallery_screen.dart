import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryScreen extends StatelessWidget {
  static const String routeName = "/gallery_screen";
  GalleryScreen({super.key});

  List photos = [
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimageio.forbes.com%2Fspecials-images%2Fimageserve%2F5d35eacaf1176b0008974b54%2F2020-Chevrolet-Corvette-Stingray%2F0x0.jpg%3Fformat%3Djpg%26crop%3D4560%2C2565%2Cx790%2Cy784%2Csafe%26width%3D960&tbnid=Juxze5zwVg-eaM&vet=12ahUKEwiozbb87_CDAxU6GhAIHZ35Cb4QMygAegQIARBz..i&imgrefurl=https%3A%2F%2Fwww.forbes.com%2Fsites%2Fjimgorzelany%2F2019%2F07%2F23%2Fhere-are-the-coolest-new-cars-for-2020%2F&docid=HZLLyFhoQjvNCM&w=960&h=540&q=picture%20cars&ved=2ahUKEwiozbb87_CDAxU6GhAIHZ35Cb4QMygAegQIARBz",
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1525609004556-c46c7d6cf023%3Fq%3D80%26w%3D1000%26auto%3Dformat%26fit%3Dcrop%26ixlib%3Drb-4.0.3%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y2Fyc3xlbnwwfHwwfHx8MA%253D%253D&tbnid=lOG1QB3arBWRbM&vet=12ahUKEwiozbb87_CDAxU6GhAIHZ35Cb4QMygBegQIARB1..i&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcars&docid=pexCxKQSr2TtXM&w=1000&h=1285&q=picture%20cars&ved=2ahUKEwiozbb87_CDAxU6GhAIHZ35Cb4QMygBegQIARB1",
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia.architecturaldigest.com%2Fphotos%2F63079fc7b4858efb76814bd2%2F16%3A9%2Fw_4000%2Ch_2250%2Cc_limit%2F9.%2520DeLorean-Alpha-5%2520%255BDeLorean%255D.jpg&tbnid=aEivpvwIkqWoQM&vet=12ahUKEwiozbb87_CDAxU6GhAIHZ35Cb4QMygCegQIARB3..i&imgrefurl=https%3A%2F%2Fwww.architecturaldigest.com%2Fgallery%2Fcars-future-bentley-bugatti-lamborghini&docid=jdhdyJ_eHI1SQM&w=4000&h=2250&q=picture%20cars&ved=2ahUKEwiozbb87_CDAxU6GhAIHZ35Cb4QMygCegQIARB3",
  ];

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
            ),
            StaggeredGrid.count(
              crossAxisCount: 4,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      height: 10,
                      width: 20,
                      color: Colors.red,
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      height: 60,
                      width: 10,
                      color: Colors.blue,
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      height: 60,
                      width: 10,
                      color: Colors.green,
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      height: 60,
                      width: 10,
                      color: Colors.yellow,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
