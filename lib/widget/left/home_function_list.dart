import 'dart:html';

import 'package:flutter/material.dart';
import 'package:happy_day/data/function_config.dart';

class HomeFunction extends StatefulWidget {
  const HomeFunction({super.key});

  @override
  State<HomeFunction> createState() => _HomeFunctionState();
}

class _HomeFunctionState extends State<HomeFunction> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Wrap(
          direction: Axis.vertical,
          spacing: 10,
          children: createFunctionWidgets(colorScheme),
        )
      ],
    );
  }

  createFunctionWidgets(ColorScheme colorScheme) {
    var list = <Widget>[];
    FUNCTION_LIST.forEach((key, value) {
      list.add(InkWell(
        onTap: () {
          print("click $key");
        },
        child: ButtonBar(
          children: [
            Icon(value),
            Text(
              key,
              style: TextStyle(
                  color: colorScheme.primary,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ));
    });
    return list;
  }
}
