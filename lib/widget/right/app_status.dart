import 'package:flutter/material.dart';

class AppStatus extends StatefulWidget {
  const AppStatus({super.key});

  @override
  State<AppStatus> createState() => _AppStatusState();
}

class _AppStatusState extends State<AppStatus> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      alignment: Alignment.centerRight,
      child: Icon(Icons.three_g_mobiledata_sharp),
    );
  }
}
