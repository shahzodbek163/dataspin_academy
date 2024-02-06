import 'package:dataspin_academy/controller/service/pdf_id_changer.dart';
import 'package:dataspin_academy/model/user_data/user_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setup() {
  locator.registerSingleton<PageController>(PageController());
  locator.registerSingleton<PdfIdChanger>(PdfIdChanger());
  locator.registerSingleton<UserData>(UserData(
    firstname: "",
    lastname: "",
    tel1: "",
  ));
}
