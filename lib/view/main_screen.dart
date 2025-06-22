import 'package:flutter/material.dart';
import 'package:flutter_meme_proj/controller/fetchMeme.dart';
import 'package:flutter_meme_proj/controller/saveMyData.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GetInitMemeNo() async {
    memeNo = await saveMyData.fetchData();
    setState(() {

    });
  }

  void updateImg() async {
    print("function called");

    String newUrl = await FetchMeme.fetchNewMeme();
    print("function called");
    setState(() {
      url = newUrl;
      isLoading=false;

    });
  }
  @override
  void initState() {
    super.initState();
    GetInitMemeNo();
  }

  int? memeNo;
  bool isLoading = true;
  String url =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS94nv5ndZrXH_dklUctyIbp916IXmSKh0mgw&s";
  @override
  Widget build(BuildContext context) {
    if (memeNo == null) {
      memeNo=1;
      return const Scaffold(

        body: Center(child: CircularProgressIndicator()),

      );
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "Meme #$memeNo",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            Text(
              "Target 500 memes",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
            ),
            SizedBox(height: 10),
            isLoading ? Container(
              child: CircularProgressIndicator(),
            ):

            Image.network(url),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async{
                await saveMyData.saveData(memeNo!+1);
                GetInitMemeNo();
                updateImg();
              },
              child: Text("More memes!!"),
            ),
          ],
        ),
      ),
    );
  }
}
