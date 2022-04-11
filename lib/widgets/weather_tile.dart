import 'package:flutter/material.dart';

class WeatherTile extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;

  WeatherTile(
       {required this.icon,
        required this.title,
        required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Color(0xff2c567c),
          ),
        ],
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xff0c5682),
        ),
      ),
    );
  }
}
