import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('ID Card'),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              Text('NAME',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.normal)),
              SizedBox(height: 10),
              Text('Alireza Nazari',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text('Occupation',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.normal)),
              SizedBox(height: 10),
              Text('Android Developer',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text('a.alirezanazari@gmail.com',
                      style: TextStyle(color: Colors.grey[400], fontSize: 14))
                ],
              )
            ],
          ),
        ));
  }
}
