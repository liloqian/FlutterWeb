import 'package:flutter/material.dart';

class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      alignment: Alignment.centerRight,
      child: Image.network("https://img.ixiaowai.cn/api/gqapi/0060lm7Tly1ftg6xhyidxj31hc0u0x6p.jpg"),
    );
  }
}
