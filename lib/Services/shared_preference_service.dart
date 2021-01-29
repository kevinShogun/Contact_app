import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static void writeString({String key, String value}) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    shared.setString(key, value);
  }

  static Future<String> readString({String key}) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.getString(key) ?? "";
    /*los ?? nos permite validar si el valor es nulo en 
         ese caso de ser nulo o inexistente nos va ha retornar una 
         cadena vacia y en caso de que no sea nulo retorna 
         el valor de la referencias*/
  }
}
