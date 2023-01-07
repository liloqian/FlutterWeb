import 'package:flutter/material.dart';
import 'package:happy_day/config.dart';

class HomePageTest extends StatefulWidget {
  const HomePageTest({super.key});

  @override
  State<HomePageTest> createState() => _HomePageStateTest();
}

class _HomePageStateTest extends State<HomePageTest> {

  var imageKey = 1;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: const Text(
                  Config.appBarName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 8,
                child: Container(
                    decoration: BoxDecoration(
                      color: colorScheme.background,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.network("http://0.0.0.0:8080/pic?key=$imageKey}"),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              imageKey += 1;
                            });
                          },
                          child: const Icon(Icons.add),
                        )
                      ],
                    )))
          ],
        ));
  }
}
