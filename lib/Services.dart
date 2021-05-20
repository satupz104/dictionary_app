import 'package:http/http.dart' as http;
import 'Dictionary.dart';
import 'package:dictionary_app/home.dart';
import 'dart:async';
bool error = false;
class Services {
 
  static Future<List<Dictionary>> getUsers() async {
      
    try {
      var  url = 'https://api.dictionaryapi.dev/api/v2/entries/en_US/$word';
      final response = await http.get(Uri.parse(url));
      print(response.statusCode);
      print(url);
      print(word);
      if (200 == response.statusCode) {
        error = false;
         final List<Dictionary> users = dictionaryFromJson(response.body);
        return users;
      } 
      else {
        error =true;
        return <Dictionary>[];
      }
    } catch (e) {
      return <Dictionary>[];
    }
  }
}