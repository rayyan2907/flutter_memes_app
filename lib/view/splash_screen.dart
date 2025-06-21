import 'package:flutter/material.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("My Meme App",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Color.fromRGBO(0, 200, 200, 1)),),
          SizedBox(height: 40,),
          Image.network("https://cdn.i-scmp.com/sites/default/files/styles/1020x680/public/d8/images/canvas/2021/10/30/85f2cb5f-44f8-4f2f-a813-63e657e11acc_5065cac7.jpg?itok=dugQzfiu&v=1635566576"),
          SizedBox(height: 20,),
          Text("MEME APP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),)
    );
  }
}
