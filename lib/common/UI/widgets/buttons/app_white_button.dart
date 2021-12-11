import 'package:flutter/material.dart';

import 'app_button.dart';

class AppWhiteButton extends AppButton {
  AppWhiteButton({
    @required String? title,
    bool isLoading = false,
    VoidCallback? onPressed,
  }) : super(
          title: title,
          isLoading: isLoading,
          onPressed: onPressed,
          textStyle: TextStyle(
            fontSize: 16,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.white,
        );
}
