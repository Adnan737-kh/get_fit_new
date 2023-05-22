import 'package:flutter/material.dart';

class WeDayOffScreen extends StatelessWidget {

  static const String id = 'we_dayoff';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/fullscreen_dayoff.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
