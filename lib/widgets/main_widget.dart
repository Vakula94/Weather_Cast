import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'weather_tile.dart';

class MainWidget extends StatelessWidget {
  final location;
  final temp;
  final tempMin;
  final tempMax;
  final weather;
  final humidity;
  final windSpeed;

  MainWidget(
      {required this.location,
      required this.temp,
      required this.tempMin,
      required this.tempMax,
      required this.weather,
      required this.humidity,
      required this.windSpeed});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff08737f),
                Color(0xff2a4858),
              ]
            ),
            color: Color(0xffd7f7e2),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(10, 5),
                blurRadius: 20,
                color: Color(0xff091115).withOpacity(0.3)
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${location.toString()}',
                style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontFamily: 'Epilogue',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '${temp.toInt().toString()}°',
                  style: TextStyle(
                      fontFamily: 'Epilogue',
                      color: Color(0xff80aaff),
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Text(
                'High of ${tempMax.toInt().toString()}°, Low of ${tempMin.toInt().toString()}°',
                style: TextStyle(
                  fontFamily: 'Epilogue',
                  color: Color(0xff80aaff),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  WeatherTile(icon: Icons.thermostat_outlined,
                      title: "Temperature",
                      subtitle: "${temp.toInt().toString()}°"),
                  WeatherTile(icon: Icons.filter_drama_outlined,
                      title: "Weather",
                      subtitle: "${weather.toString()}"),
                  WeatherTile(icon: Icons.wb_sunny,
                      title: "Humidity",
                      subtitle: "${humidity.toString()}%"),
                  WeatherTile(icon: Icons.waves_outlined,
                      title: "Wind Speed",
                      subtitle: "${windSpeed.toInt().toString()}mph"),
                ],
              ),
            ),
        ),
      ],
    );
  }
}
