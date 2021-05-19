import 'package:http/http.dart' as http;
import 'Dictionary.dart';
import 'package:dictionary_app/home.dart';
final urlStr = 'hello';

class Services {
  // //
  // if(word ==''){
  // word=urlStr;
  // }
  

 
  static Future<List<Dictionary>> getUsers() async {
      final  url = 'https://api.dictionaryapi.dev/api/v2/entries/en_US/$word';
    try {
      print(url);
      final response = await http.get(Uri.parse(url));
      print(response.statusCode);

      if (200 == response.statusCode) {
         final List<Dictionary> users = dictionaryFromJson(response.body);
       
        return users;
      } else {
        return List<Dictionary>();
      }
    } catch (e) {
      print('Insidew =catch');
      return List<Dictionary>();
    }
  }
}