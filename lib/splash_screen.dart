import 'dart:async';
import 'dart:convert';
import 'package:demo_1/api_setting_response.dart';
import 'package:demo_1/navigator/navigator_service.dart';
import 'package:demo_1/sign_in_screen.dart';
import 'package:http/http.dart' as http;
import 'package:demo_1/appstate.dart';
import 'package:demo_1/loginresponse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo_1/appstate.dart';


import 'navigator/navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _displayText = "";
  LoginResponse loginResponse = LoginResponse();
  ApiSettingResponse apiSettingResponse = ApiSettingResponse();
  String _jsonResonse = "";
  bool _isFetching = false;

  Future<void> tokenVerificationAPI() async {
    Map<String, String> queryParameters = {
      'subscription_id': '124',
      'jwt_token':
          'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvc3RvcmUuY3liZXJsb2JlLmNvbSIsImlhdCI6MTYwOTgyMjk5MSwibmJmIjoxNjA5ODIyOTkxLCJleHAiOjE2MTA0Mjc3OTEsImRhdGEiOnsidXNlciI6eyJpZCI6IjczIn19fQ.Kk3swkswzY7W-XQHWeh5S5HJ96Rw3neuV3yn8pGvpZI1',
    };
    _isFetching = true;
    // notifyListeners();
    var uri = Uri.https('staging1.store.cyberlobe.com',
        '/mobile_api/verify_user_token_and_subscription', queryParameters);
    var response = await http.post(uri,)
        .then((data) async {
      var responsejSON = json.decode(data.body);
      if (data.statusCode == 200) {
        loginResponse = LoginResponse.fromJson(responsejSON);
        print(responsejSON['status']);
        if(responsejSON['status']==true){
          appSettingApi();
        }
       }
      _isFetching = false;
      // notifyListeners();
    });
  }


  Future<void> appSettingApi() async {
    Map<String, String> queryParameters = {
      'subscription_id': '124',
    };
    _isFetching = true;
    // notifyListeners();
    var uri = Uri.https('staging1.store.cyberlobe.com',
        '/mobile_api/app_settings', queryParameters);
    var response = await http.post(uri,)
        .then((data) async {
      var responsejSON = json.decode(data.body);
      if (data.statusCode == 200) {
        apiSettingResponse = ApiSettingResponse.fromJson(responsejSON);
        print(responsejSON['background_color']);
        AppState().checkColor = responsejSON['background_color'];



      }
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen() ));
      _isFetching = false;
      // notifyListeners();
    });
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);

    return Timer(_duration, tokenVerificationAPI);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      body: Container(color: Colors.white,),
    );
  }
}
