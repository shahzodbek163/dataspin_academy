import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';
import 'package:dataspin_academy/controller/service/locator/service_locator.dart';

init() async {
  await SecureStorage.initSharedPref();
  setup();
}
