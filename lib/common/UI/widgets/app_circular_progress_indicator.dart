import 'package:flutter/material.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  final Color? color;

  AppCircularProgressIndicator({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          backgroundColor: color,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.amberAccent),
        ),
      ),
    );
  }
}
