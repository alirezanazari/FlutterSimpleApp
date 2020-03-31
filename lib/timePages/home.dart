import 'package:flutter/material.dart';

class HomeTime extends StatefulWidget {
  @override
  _HomeTimeState createState() => _HomeTimeState();
}

class _HomeTimeState extends State<HomeTime> {
  Map args;
  bool isNight;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (args == null) {
      args = ModalRoute.of(context).settings.arguments;
    }
    isNight = args['isNight'];

    String bgCover = isNight ? 'night.jpg' : 'day.jpg';
    Color bgColor = isNight ? Colors.indigo[800] : Colors.blue;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgCover'),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0 , 120.0 , 0 , 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () async{
                    dynamic resp = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      args = resp as Map;
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  ),
                  label: Text(
                    'Choose Location',
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      args['city'],
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 28.0,
                        letterSpacing: 2.0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  args['time'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 66.0
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
