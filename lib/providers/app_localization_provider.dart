import 'package:flutter/cupertino.dart';

class AppLocalizationProvider extends ChangeNotifier {
  String local = 'en';

  void changeLanguage(String newLanguage) {
    if (local == newLanguage) {
      return;
    }
    local = newLanguage;
    notifyListeners();
  }
}
