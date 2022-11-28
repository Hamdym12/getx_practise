import 'package:get/get.dart';

class MyLocale implements Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar":{
      "1":"الصفحه الرئيسيه",
      "2":"العربيه",
      "3":"الانجليزيه",
    },
    "en":{
      "1":"Home Page",
      "2":"Arabic",
      "3":"English",
    },
  };
}
