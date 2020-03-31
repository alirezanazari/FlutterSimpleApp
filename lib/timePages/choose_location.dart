import 'package:flutter/material.dart';
import 'package:flutterapp/repository/time_repository.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<TimeRepository> locations = [
    TimeRepository(url: 'Asia/Tehran', location: 'Tehran', flag: 'iran.png'),
    TimeRepository(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    TimeRepository(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    TimeRepository(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    TimeRepository(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    TimeRepository(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    TimeRepository(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    TimeRepository(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    TimeRepository(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text('Choose a Location'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0 , horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  getTimeByApiAndUpdateHome(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void getTimeByApiAndUpdateHome(int index) async{
    TimeRepository repo = locations[index];
    await repo.getTimeByApi();
    Navigator.pop(context ,{
      'time': repo.time,
      'city': repo.location,
      'flag': repo.flag,
      'isNight': !repo.isDay
    });
  }
}
