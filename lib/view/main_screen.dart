import 'package:flutter/material.dart';
class Main_screen extends StatelessWidget {
  const Main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Meme #21",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Tar get 500 memes",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),),
            SizedBox(height: 10,),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS94nv5ndZrXH_dklUctyIbp916IXmSKh0mgw&s"),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Container(
                height: 20,
                width: 70,
                child: Center(child: Text("More_Meme!!"))))

          ],
        ),
      ),
    );
  }
}