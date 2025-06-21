import 'dart:convert';

import 'package:http/http.dart' as http;

class FetchMeme {

  static fetchNewMeme()async{

      http.Response response = await http.get(Uri.parse("https://meme-api.com/gimme"));
      Map meme_data = jsonDecode(response.body);

      return meme_data["url"];
  }

}