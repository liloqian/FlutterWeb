import 'package:flutter/material.dart';
import 'package:happy_day/widget/right/ImageTest.dart';
import 'package:happy_day/widget/right/app_status.dart';

import 'left/home_page_left.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      child: Container(
        color: colorScheme.background,
        margin: const EdgeInsets.all(80.0),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: HomePageLeft(),
            ),
            SizedBox(
              width: 1,
              height: MediaQuery.of(context).size.height,
              child: DecoratedBox(
                decoration: BoxDecoration(color: colorScheme.onSecondary),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: AppStatus(),
                  ),
                  Expanded(flex: 12, child: ImageTest())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
