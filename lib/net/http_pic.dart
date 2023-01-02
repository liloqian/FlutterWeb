import 'dart:math';

import 'package:http/http.dart' as http;

Future<String> fetchPic() async {
  final response = await http.get(Uri.parse("http://0.0.0.0:8080/pic"));

  if (response.statusCode == 200) {
    return response.body.toString();
  } else {
    throw Exception("fetch error");
  }
}