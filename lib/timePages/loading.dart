import 'package:flutter/material.dart';
import 'package:flutterapp/repository/time_repository.dart';

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
        'flag': repo.flag
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Loading'),
        ),
      ),
    );
  }
}
