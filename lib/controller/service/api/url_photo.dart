class UrlPhoto {
  UrlPhoto._();

  static String url(String photoId) {
    return "http://dataspinacademy.uz/api/image/?id=$photoId";
  }
}
