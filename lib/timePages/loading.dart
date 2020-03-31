import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterapp/repository/time_repository.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTimeByApi() async {
    TimeRepository repo = TimeRepository(location: 'Tehran', flag: 'iran.jpg', url: 'Asia/Tehran');
    await repo.getTimeByApi();

    if (repo.time != 'error') {
      Navigator.pushReplacementNamed(context, "/home", arguments: {
        'time': repo.time,
        'city': repo.location,
        'flag': repo.flag,
        'isNight': repo.isNight
      });
    }

  }

  @override
  void initState() {
    super.initState();
    getTimeByApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: SafeArea(
        child: Center(
          child: SpinKitCircle(
            color: Colors.white,
              size: 50.0,
          ),
        ),
      ),
    );
  }
}
