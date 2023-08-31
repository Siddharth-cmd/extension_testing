import 'package:extension_testing/extensions/app_bar_adaptive.dart';
import 'package:extension_testing/extensions/row_scrollable.dart';
import 'package:extension_testing/extensions/text_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ).onIOS(),
        body: Row(
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              width: 200,
            ),
            Container(
              color: Colors.red,
              height: 200,
              width: 200,
            ),
            Container(
              color: Colors.green,
              height: 200,
              width: 200,
            ),
            Container(
              color: Colors.blueAccent,
              height: 200,
              width: 200,
            ),
          ],
        ).scrollable(),
      ),
    );
  }
}
