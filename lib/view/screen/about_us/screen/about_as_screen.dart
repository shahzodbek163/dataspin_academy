import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/bloc/aboutus/cubit/aboutus_cubit.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/generated/assets.dart';
import 'package:dataspin_academy/view/screen/about_us/widget/docs_card.dart';
import 'package:dataspin_academy/view/screen/about_us/widget/informations.dart';
import 'package:dataspin_academy/view/screen/about_us/widget/youtube_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsScreen extends StatefulWidget {
  static const String routeName = "/about_as_screen";

  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AboutUsCubit>().getAllAboutUs();
    print("obnaydvwua");
  }

  final controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: BlocBuilder<AboutUsCubit, AboutusState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Text("data"),
              getting: () => const Center(child: CircularProgressIndicator()),
              get: (response) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                          "${AppIp.ip}/api/image/?id=${response.data.mainPhoto.id}",
                      width: double.infinity,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 92,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: response.data.additionalPhoto.length,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: CachedNetworkImage(
                              imageUrl:
                                  "${AppIp.ip}/api/image/?id=${response.data.additionalPhoto[index].id}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Akademiya hujjatlari',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF292930),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const DocsCard(docName: "Akademiya litsenziyasi"),
                        SizedBox(height: 16.h),
                        const DocsCard(docName: "Akademiya shartnomasi"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Youtube video',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF292930),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            controller.animateToPage(
                              index + 1,
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.fastLinearToSlowEaseIn,
                            );
                          },
                          child: const Text(
                            "Swipe to next",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF5956E9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: PageView.builder(
                        controller: controller,
                        itemCount: response.data.youTubeLinks.split(",").length,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (value) {
                          index = value;
                        },
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: YoutubeWidget(
                                youtubeUrl: response.data.youTubeLinks
                                    .split(",")[index],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          const Informations(
                            iconName: Assets.iconsGlobal,
                            text: "Offline va Online ta’lim",
                            decoration:
                                "O’quv markazda offline ta’lim, nogironligi bor fuqarolarga online ta’lim mavjud",
                          ),
                          Container(
                            width: double.infinity,
                            height: 0.5,
                            color: Colors.black38,
                          ),
                          const Informations(
                            iconName: Assets.iconsPro,
                            text: "Professional mentorlar",
                            decoration:
                                "Akademiyada barcha mentorlar yuqori saviyali dasturchi mutahassislardir",
                          ),
                          Container(
                            width: double.infinity,
                            height: 0.5,
                            color: Colors.black38,
                          ),
                          const Informations(
                            iconName: Assets.iconsChair,
                            text: "Zamonaviy sharoit",
                            decoration: "Zamon talabiga mos ta’lim sharoiti",
                          ),
                          Container(
                            width: double.infinity,
                            height: 0.5,
                            color: Colors.black38,
                          ),
                          const Informations(
                            iconName: Assets.iconsCertificate,
                            text: "Sertifikat",
                            decoration:
                                "O’quv markazni bitirsangiz DataSpin Academy maxsus serifikati beriladi",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(255, 225, 224, 255),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Faolyat turi",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              response.data.activityDesc,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              "To'liq ma'lumuot",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              response.data.fullAboutUs,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<String> picturesList = [
    "assets/image/picture1.png",
    "assets/image/picture2.png",
    "assets/image/picture3.png",
  ];

  List<String> youtubeUrlList = [
    "x1a9rvw7YeI",
    "cgtGhrqNBOI",
    "hi9pH_sTXrU",
    "TNJqAx-TvjI",
  ];
}
