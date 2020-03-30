import 'package:flutter/material.dart';

class HomeTime extends StatefulWidget {
  @override
  _HomeTimeState createState() => _HomeTimeState();
}

class _HomeTimeState extends State<HomeTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/location');
          },
          child: Text('Choose Location'),
        ),
      ),
    );
  }
}
