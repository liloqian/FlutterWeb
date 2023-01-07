import 'package:flutter/material.dart';
import 'package:happy_day/widget/left/app_info_widget.dart';
import 'package:happy_day/widget/left/home_function_list.dart';

class HomePageLeft extends StatefulWidget {
  const HomePageLeft({super.key});

  @override
  State<HomePageLeft> createState() => _HomePageLeftState();
}

class _HomePageLeftState extends State<HomePageLeft> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const AppInfo(),
        Container(height: 20),
        HomeFunction()
      ],
    );
  }
}
