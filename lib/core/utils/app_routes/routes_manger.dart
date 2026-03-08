import 'package:event_planning/features/event/create_event.dart';
import 'package:event_planning/features/tabs/fav_tab/fav_tab.dart';
import 'package:event_planning/features/tabs/home_tab/home_tab.dart';
import 'package:event_planning/features/tabs/main_layout.dart';
import 'package:event_planning/features/tabs/profile_tab/profile_tab.dart';
import 'package:flutter/cupertino.dart';

import '../../../features/authentication/forget_password/forget_password_screen.dart';
import '../../../features/authentication/login/login_screen.dart';
import '../../../features/authentication/register/register_screen.dart';
import '../../../features/tabs/map_tab/map_tab.dart';

class RoutesManger {
  static const String login = '/login';
  static const String register = '/register';
  static const String forgetPassword = '/forget password';
  static const String homeTab = '/home tab';
  static const String mapTab = '/map tab';
  static const String favoriteTab = '/favorite tab';
  static const String profileTab = '/profile tab';
  static const String addEventTab = '/add event tab';
  static const String editEventTab = '/edit event tab';
  static const String mainLayout = '/main layout';
  static const String createEvent = '/create event';

  static Route? getRoute(RouteSettings setting) {
    switch (setting.name) {
      case login:
        return CupertinoPageRoute(builder: (context) => LoginScreen());
      case register:
        return CupertinoPageRoute(builder: (context) => RegisterScreen());
      case forgetPassword:
        return CupertinoPageRoute(builder: (context) => ForgetPasswordScreen());
      case homeTab:
        return CupertinoPageRoute(builder: (context) => HomeTab());
      case mapTab:
        return CupertinoPageRoute(builder: (context) => MapTab());
      case favoriteTab:
        return CupertinoPageRoute(builder: (context) => FavoriteTab());
      case profileTab:
        return CupertinoPageRoute(builder: (context) => ProfileTab());
      case mainLayout:
        return CupertinoPageRoute(builder: (context) => MainLayout());
      case createEvent:
        return CupertinoPageRoute(builder: (context) => CreateEvent());
    }
  }
}
