import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';
import 'package:dataspin_academy/controller/service/locator/service_locator.dart';
import 'package:dataspin_academy/controller/service/pdf_id_changer.dart';
import 'package:dataspin_academy/view/screen/account/screen/account_screen.dart';
import 'package:dataspin_academy/view/screen/login/screen/login_screen.dart';
import 'package:dataspin_academy/view/screen/menu/widget/row_widget.dart';
import 'package:dataspin_academy/view/screen/pdf_view/screen/pdf_view_screen.dart';
import 'package:dataspin_academy/view/screen/promo_code/screen/promo_code_screen.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuScreen extends StatelessWidget {
  static const String routeName = "/menu_screen";
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSize.horizontalPadding,
              vertical: AppSize.verticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextAppbar(),
              SizedBox(height: 28.h),
              RowWidget(
                onTap: () {
                  launchUrl(Uri(scheme: "tel", path: "+998901631716"));
                },
              ),
              SizedBox(height: 18.h),
              RowWidget(
                iconPath: AppIcons.map,
                text: "O’quv markaz lokatsiyasi",
                onTap: () {
                  launchUrl(
                      mode: LaunchMode.externalApplication,
                      Uri(
                          scheme: "https",
                          path: "//maps.app.goo.gl/oJwqWVe4Y4y5BMtm8"));
                },
              ),
              SizedBox(height: 18.h),
              RowWidget(
                iconPath: AppIcons.openBook,
                text: "Bizning shartnoma",
                onTap: () {
                  locator.get<PdfIdChanger>().change(65);
                  context.push(PdfViewScreen.routeName);
                },
              ),
              SizedBox(height: 18.h),
              RowWidget(
                iconPath: AppIcons.personalCard,
                text: "O’quv markaz litsenziyasi",
                onTap: () {
                  locator.get<PdfIdChanger>().change(66);
                  context.push(PdfViewScreen.routeName);
                },
              ),
              SizedBox(height: 18.h),
              RowWidget(
                iconPath: AppIcons.scan,
                text: "Promokodlar",
                onTap: () => context.push(PromoCodeScreen.routeName),
              ),
              /*RowWidget(
                iconPath: AppIcons.image,
                text: "Galareya",
                onTap: () => context.push(GalleryScreen.routeName),
              ),*/
              SizedBox(height: 18.h),
              RowWidget(
                iconPath: AppIcons.image,
                text: "Profil",
                onTap: () => context.push(AccountScreen.routeName),
              ),
              SizedBox(height: 18.h),
              RowWidget(
                  iconPath: AppIcons.logOut,
                  text: "Chiqish",
                  textColor: Colors.red,
                  iconColor: Colors.red,
                  onTap: () {
                    context.pushReplacement(LoginScreen.routeName);
                    SecureStorage().clear();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
