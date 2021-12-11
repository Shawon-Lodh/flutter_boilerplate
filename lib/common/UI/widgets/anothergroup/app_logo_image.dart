import 'package:flutter/material.dart';

class AppLogoImage extends StatelessWidget {
  final double? width;
  final double? height;
  final bool? inAnimated;
  const AppLogoImage({Key? key, this.width = 200, this.height = 200, this.inAnimated = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: _tween,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.bounceOut,
      builder: (_, scale, child) {
        return Transform.translate(
          offset: Offset(0, -100 * scale),
          child: child,
        );
      },
      child: Image.asset(
        "",
        height: height,
        width: width,
        color: Colors.white,
        fit: BoxFit.contain,
      ),
    );
  }

  Tween<double> get _tween {
    return inAnimated!
        ? Tween<double>(begin: -1.0, end: 0)
        : Tween<double>(begin: 0, end: 0);
  }
}
