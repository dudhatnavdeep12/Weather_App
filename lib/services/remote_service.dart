import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_api_app/models/weather.dart';

class RemoteService {
  static String lat = "-25.274398";
  static String lon = "133.775136";

  Future<Weather> fetchWeatherdata() async {
    print("hello");
    http.Response res = await http.get(Uri.parse(
        "http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=146c41512f4d01b20fc73b673c804796"));
    print("a" + res.statusCode.toString());
    if (res.statusCode == 200) {
      print("a" + res.body);
      return Weather.fromJson(jsonDecode(res.body));
    } else {
      throw Exception("Something went wrong !!!!");
    }
  }
}
