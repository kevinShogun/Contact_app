import 'dart:io';

Future<bool> checkInternet() async {
  var resp = await InternetAddress.lookup("google.com");

  try {
    if (resp.isEmpty && resp[0].rawAddress.isEmpty) {
      return false;
    } else {
      return true;
    }
  } on SocketException catch (e) {
    return false;
  }
}
