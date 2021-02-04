import 'package:demo_1/navigator/navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sign_in_screen.dart';
import '../splash_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case signRoute:
        return MaterialPageRoute(builder: (_) => SignInScreen());
          default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}