import 'package:flutter/material.dart';

class Decorations {
  static customBoxDecoration({
    double blurRadius = 4,
  }) {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(blurRadius: blurRadius),
      ],
    );
  }
}