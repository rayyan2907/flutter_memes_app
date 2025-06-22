import 'package:flutter/material.dart';
import 'package:flutter_meme_proj/view/main_screen.dart';
import 'package:flutter_meme_proj/view/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;
showSplashScreen(){
    Future.delayed(Duration(seconds: 5),(){
  setState(() {
    showSplash= false;
  });
    });
}
@override
  void initState() {
    // TODO: implement initState
  showSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meme App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: showSplash ? splash_screen():MainScreen(),
    );
  }
}

