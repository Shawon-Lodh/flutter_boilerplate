import 'package:flutter/material.dart';

import 'app_button.dart';

class AppIconButton extends AppButton {
  AppIconButton({
    String? title,
    Widget? leadingIcon,
    Widget? trailingIcon,
    bool isLoading = false,
    TextStyle? textStyle,
    Color? backgroundColor,
    VoidCallback? onPressed,
  }) : super(
          title: title,
          leadingIcon: leadingIcon,
          trailingIcon: trailingIcon,
          isLoading: isLoading,
          onPressed: onPressed,
          textStyle: textStyle,
          backgroundColor: backgroundColor,
        );
}

class CircleIconButton extends StatelessWidget {
  final Icon? icon;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? splashColor;

  const CircleIconButton({
    Key? key,
    @required this.icon,
    this.onTap,
    this.width = 56.0,
    this.height = 56.0,
    this.backgroundColor = Colors.blue,
    this.splashColor = Colors.black12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: backgroundColor,
        child: InkWell(
          splashColor: splashColor,
          child: SizedBox(
            width: width,
            height: height,
            child: icon,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
