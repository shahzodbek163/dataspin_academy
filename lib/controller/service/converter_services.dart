class ConverterServices{
  ConverterServices._();
  static String phoneConverter(String formattedPhone){
    String phoneMasked = formattedPhone;
    List<String> splitted = phoneMasked.split(" ");
    String head = splitted[0].substring(1, 4);
    String code = splitted[1].substring(1, 3);
    List<String> originalNumberSplitted = splitted[2].split("-");
    String number = originalNumberSplitted[0] +
        originalNumberSplitted[1] +
        originalNumberSplitted[2];
    String fullPhone = head + code + number;
    return fullPhone;
  }
}