import 'package:flutter/material.dart';

class AppInfo extends StatefulWidget {
  const AppInfo({super.key});

  @override
  State<AppInfo> createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        const FlutterLogo(size: 30),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "happy day",
              style: TextStyle(
                  color: colorScheme.primary,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              "leo cat",
              style: TextStyle(
                  color: colorScheme.secondary,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            )
          ],
        )
      ],
    );
  }
}
