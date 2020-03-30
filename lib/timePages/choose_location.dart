import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async{

    String name = await Future.delayed(Duration(seconds: 3), (){
      return 'Alireza';
    });

    int age = await Future.delayed(Duration(seconds: 2) , (){
      return 22;
    });

    print('Hi $name with $age years old');

  }

  @override
  void initState() {
    super.initState();
    getData();
    print("init state");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text('Choose a Location'),
        centerTitle: true,
      ),
      body: Text('choose location page'),
    );
  }
}
