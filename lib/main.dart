import 'package:flutter/material.dart';
import 'package:flutter_meme_proj/view/main_screen.dart';
import 'package:flutter_meme_proj/view/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meme App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: MainScreen(),
    );
  }
}

