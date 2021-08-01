import 'package:http/http.dart' as http;
import 'package:weather_api_app/models/weather.dart';

class WeatherService {
  static Future<Weather> getData() async {
    http.Response res = await http.get(Uri.parse(
        "http://api.openweathermap.org/data/2.5/weather?lat=44.4687&lon=-71.1851&appid=146c41512f4d01b20fc73b673c804796"));
    print("Hello");
  }
}
