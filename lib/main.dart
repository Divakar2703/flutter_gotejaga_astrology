import 'package:flutter/material.dart';
import 'package:flutter_gote_jaga_astrology/view/bottom_bar.dart';
import 'package:flutter_gote_jaga_astrology/view/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const BottomBar(),
    );
  }
}
