import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
  new GlobalKey<NavigatorState>();

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
// navigate new screen without arguments
  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }
// navigate new screen with arguments
  Future<dynamic> navigateArgTo(String routeName, dynamic value) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: value);
  }
// Replace olde screen with  new screen ;
  Future<dynamic> navigateToReplace(String routeName) {
    return navigatorKey.currentState
        .pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
  }

  backPress() {
    navigatorKey.currentState.pop();
  }

}