import 'dart:convert';

import 'package:flutter/services.dart';

class LanguagesLazyLoading {
  List<String>? _languagesData;

  getLanguages() {
    if (_languagesData == null) {
      _languagesData == loadlanguages();
    } else {
      return _languagesData;
    }
  }

  loadlanguages() async {
    List<String> items;
    String filePath = "assets/lottie/languages.json";
    String jsonString = await rootBundle.loadString(filePath);
    items = await json.decode(jsonString);
    return items;
  }
}
