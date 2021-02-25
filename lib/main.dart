import 'package:flutter/material.dart';
import 'package:news_client/pages/welcome/welcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
