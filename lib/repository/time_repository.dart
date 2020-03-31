import 'package:http/http.dart';
import 'dart:convert';

class TimeRepository{

  final String BASE_URL = 'http://worldtimeapi.org/api/timezone/';
  String time ;
  String location ;
  String flag ;
  String url ;

  TimeRepository({this.location, this.flag, this.url});

  Future<void> getTimeByApi() async{

    Response resp = await get(BASE_URL + url);
    Map data = jsonDecode(resp.body);

    int offset = int.parse(data['utc_offset'].substring(1,3));
    DateTime now = DateTime.parse(data['datetime']);
    now = now.add(Duration(hours: offset));

    time = now.toString();

  }

}