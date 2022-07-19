import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedId => _isLoggedIn;

  void setIsLoggedIn(bool value) {
    _isLoggedIn = value;
    notifyListeners();
  }
}
