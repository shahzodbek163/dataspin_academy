import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';


init() async {
  await SecureStorage.initSharedPref();
}
