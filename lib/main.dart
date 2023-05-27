import 'package:flutter/material.dart';
import 'package:whatsflut/feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsFlut',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: WelcomePage(),
      ),
    );
  }
}
