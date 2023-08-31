import 'package:extension_testing/extensions/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar().onIOS(
          title: "Title",
        ),
        body: const Column(
          children: [],
        ),
      ),
    );
  }
}
