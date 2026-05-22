import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
  static AppController instance = AppController();

  bool darkMode = false;
  ChangeMode()
  {
    darkMode = !darkMode;
    notifyListeners();
  }
}
