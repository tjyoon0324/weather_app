import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  final parseWeatherData;

  WeatherScreen({this.parseWeatherData});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String cityName = '';
  int temp = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.parseWeatherData);
    updateData(widget.parseWeatherData);
  }

  void updateData(dynamic weatherData) {
    cityName = weatherData['name'];
    double temp2 = weatherData['main']['temp'];
    temp = temp2.round();

    print(cityName);
    print(temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'images/background.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
