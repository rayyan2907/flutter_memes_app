import 'package:flutter/material.dart';
import 'package:flutter_meme_proj/controller/fetchMeme.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  void updateImg() async {
    print("function called");

    String newUrl = await FetchMeme.fetchNewMeme();
    print("function called");
    setState(() {
      url=newUrl;
    });
  }

  String url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS94nv5ndZrXH_dklUctyIbp916IXmSKh0mgw&s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Meme #21",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Target 500 memes",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),),
            SizedBox(height: 10,),
            Image.network(url),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              updateImg();
            }, child: Text("More memes!!"))

          ],
        ),
      ),
    );
  }
}