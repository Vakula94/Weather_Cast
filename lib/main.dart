import 'package:flutter/material.dart';
import 'widgets/weather_tile.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false, title: 'Weather App', home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xffd7f7e2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kyiv',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    '11°',
                    style: TextStyle(
                        color: Color(0xff80aaff),
                        fontSize: 40,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Text(
                  'High of 15°, Low of 6°',
                  style: TextStyle(
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
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  WeatherTile(
                      icon: Icons.thermostat_outlined,
                      title: 'Temperature',
                      subtitle: '10°'),
                  WeatherTile(
                      icon: Icons.filter_drama_outlined,
                      title: 'Weather',
                      subtitle: 'Cloudy'),
                  WeatherTile(
                      icon: Icons.wb_sunny, title: 'Humidity', subtitle: '5%'),
                  WeatherTile(
                      icon: Icons.waves_outlined,
                      title: 'Wind Speed',
                      subtitle: '7mph'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
