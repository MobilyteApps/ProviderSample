import 'package:demo_1/loginresponse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AppState with ChangeNotifier {
  AppState();

  String _dataUrl =
      "https://staging1.store.cyberlobe.com/mobile_api/verify_user_token_and_subscription/";

  String _displayText = "";
  LoginResponse loginResponse = LoginResponse();
  String _jsonResonse = "";
  bool _isFetching = false;
  String checkColor;

  void setDisplayText(String text) {
    _displayText = text;
    notifyListeners();
  }

  String get getDisplayText => _displayText;

  bool get isFetching => _isFetching;


  String get getResponseText => _jsonResonse;

  List<dynamic> getResponseJson() {
    if (_jsonResonse.isNotEmpty) {
      Map<String, dynamic> json = jsonDecode(_jsonResonse);
      return json['data'];
    }
    return null;
  }
}
