import 'package:event_planning/core/utils/firebase/my_user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  //todo: data
  MyUser? currentUser;

  //todo: func
  void updateUser(MyUser newUser) {
    currentUser = newUser;
    notifyListeners();
  }
}
