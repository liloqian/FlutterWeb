import 'package:flutter/material.dart';
import 'package:happy_day/widget/home_page.dart';

class RouteMain {

  static const homePage = '/';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (settings.name == homePage) {
      return MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      );
    }
    assert(false, 'Need to implement ${settings.name}');
    return null;
  }
}
