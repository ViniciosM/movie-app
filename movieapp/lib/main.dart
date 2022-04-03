import 'package:flutter/material.dart';

import 'core/inject/inject.dart';

void main() {
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData.dark(),
      home: Container(),
    );
  }
}
