import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  String data;
  Future getData() async {
    Response response = await get(url);

    if (response.statusCode == 200) {
      data = response.body;
      return jsonDecode(data);
    } else {
      return response.statusCode;
    }
  }
}
