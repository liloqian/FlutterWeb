import 'package:flutter/material.dart';
import 'package:happy_day/route/route_main.dart';
import 'package:happy_day/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeApp.lightThemeData,
      darkTheme: ThemeApp.darkThemeData,
      themeMode: ThemeMode.system,
      onGenerateRoute: RouteMain.onGenerateRoute,
    );
  }
}
