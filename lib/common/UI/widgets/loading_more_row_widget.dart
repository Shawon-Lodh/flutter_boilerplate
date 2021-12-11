import 'package:flutter/material.dart';

class LoadingMoreRowWidget extends StatelessWidget {
  final double? height;
  final Color? color;

  LoadingMoreRowWidget({Key? key, this.height = 80, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Container(
        alignment: Alignment.center,
        child: Container(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            backgroundColor: color,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.amberAccent),
          ),
        ),
      ),
    );
  }
}
