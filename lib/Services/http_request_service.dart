import 'package:http/http.dart' as http;

Future<String> obtanieNews() async {
  var resp = await http.get(
      "https://api.nytimes.com/svc/mostpopular/v2/emailed/7.json?api-key=tJeEKvMNm1tqORm3eZBDQhy5DYY1baAV",
      headers: {'Content-Type': 'application/json'});

  // print(resp.body);

  return resp.body;
}
