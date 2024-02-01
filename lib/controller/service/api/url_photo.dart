import 'package:dataspin_academy/controller/service/api/app_ip.dart';

class UrlPhoto {
  UrlPhoto._();

 static String url(String photoId) {
    return "${AppIp.ip}/api/image/?id=$photoId";
  }
}
