import 'package:demo_1/appstate.dart';
import 'package:demo_1/navigator/navigator.dart';
import 'package:demo_1/navigator/navigator_service.dart';
import 'package:demo_1/splash_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo_1/router.dart' as route;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();
  // static FirebaseAnalytics analytics = FirebaseAnalytics();
  // static FirebaseAnalyticsObserver observer =
  //     FirebaseAnalyticsObserver(analytics: analytics);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>  AppState(),
        ),
        // ChangeNotifierProvider (
        //   create: (context) => AppState(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Demo',
        // navigatorObservers: <NavigatorObserver>[MyApp.observer],
        home: SplashScreen(),
        // navigatorKey: locator<NavigationService>().navigatorKey,
        // onGenerateRoute: route.Router.generateRoute,
      ),
    );
  }
}
