import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  int _age;
  String _name;

  User(this._age, this._name,);

  int get age => _age;
  String get name => _name;
  bool get isOld => _age > 24;

  void birthday(){
    _age++;
    notifyListeners();
  }

  void changeName(String name) {
    _name = name;
    notifyListeners();
  }
}