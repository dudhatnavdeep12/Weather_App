import 'package:flutter/material.dart';
import 'package:weather_api_app/models/weather.dart';
import 'package:weather_api_app/services/remote_service.dart';
import 'package:weather_api_app/widgets/app_drawer.dart';
import 'package:weather_api_app/widgets/weather_widget.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  RemoteService remoteService = RemoteService();
  Future<Weather> fetchWeather;
  void initState() {
    super.initState();
    fetchWeather = RemoteService().fetchWeatherdata();
    print(fetchWeather);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.black.withOpacity(0.5)),
          child: Drawer(
            child: AppDrawer(),
          ),
        ),
        body: FutureBuilder(
          future: fetchWeather,
          builder: (context, snapshot) {
            print(snapshot.data);
            if (snapshot.hasError) {
              return Center(
                child: Text("Something went wrong....!!!!!!!"),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            return Center(
              child: WeatherWidget(
                snapshot: snapshot,
              ),
            );
          },
        ),
      ),
    );
  }
}
