import 'package:flutter/material.dart';

class HomeTime extends StatefulWidget {
  @override
  _HomeTimeState createState() => _HomeTimeState();
}

class _HomeTimeState extends State<HomeTime> {
  Map args;

  @override
  Widget build(BuildContext context) {

    if (args == null) {
      args = ModalRoute.of(context).settings.arguments;
      print(args);
    }

    return Scaffold(
      body: SafeArea(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/location');
          },
          child: Text('Choose Location'),
        ),
      ),
    );
  }
}
