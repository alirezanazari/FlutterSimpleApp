
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/timePages/choose_location.dart';
import 'package:flutterapp/timePages/home.dart';
import 'package:flutterapp/timePages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => HomeTime(),
    '/location': (context) => ChooseLocation()
  }
  ));