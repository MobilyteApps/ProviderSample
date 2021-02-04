import 'package:demo_1/appstate.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      body:
      // appState.checkColor == null
      appState?.checkColor==null
          ? Container()
          : Container(
              color: HexColor(appState.checkColor),
              child: Center(child: Text('Welcome'))),
    );
  }
}
