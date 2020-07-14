import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Scrollnotif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: double.infinity,
      child: TextLiquidFill(
        loadDuration: Duration(seconds: 3),
        text: 'SCROLL',
        waveColor: Colors.blueAccent,
        boxBackgroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
        ),
        boxHeight: 80.0,
      ),
    );
  }
}
