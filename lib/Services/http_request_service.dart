import 'package:flutter_app/Services/internet_service.dart';
import 'package:http/http.dart' as http;

Future<String> obtanieNews() async {
  if (checkInternet() != null) {
    try {
      var resp = await http.get(
          "https://api.nytimes.com/svc/mostpopular/v2/emailed/7.json?api-key=tJeEKvMNm1tqORm3eZBDQhy5DYY1baAV",
          headers: {'Content-Type': 'application/json'});

      // print(resp.body);

      return resp.body;
    } catch (e) {
      print(e);
      return null;
    }
  } else {
    return null;
  }
}
