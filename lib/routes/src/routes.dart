import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/routes/src/path_route.dart';

class Routes {
  // Routes
  static final routes = <String, WidgetBuilder>{
    // PathRoutes.splash: (BuildContext context) => SplashScreen(),
    // PathRoutes.login: (BuildContext context) => LoginScreen(),
    // PathRoutes.home: (BuildContext context) => HomeScreen(),
  };

  //push
  static void push(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }

  //pop
  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  //popAndPush
  static void popAndPush(BuildContext context, String routeName) {
    Navigator.popAndPushNamed(context, routeName);
  }

  //pushReplace
  static void pushReplace(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }
}
