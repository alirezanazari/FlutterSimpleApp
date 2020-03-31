import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class TimeRepository {
  final String BASE_URL = 'http://worldtimeapi.org/api/timezone/';
  String time;
  String location;
  String flag;
  String url;
  bool isNight ;

  TimeRepository({this.location, this.flag, this.url});

  Future<void> getTimeByApi() async {
    try {
      Response resp = await get(BASE_URL + url);
      Map data = jsonDecode(resp.body);

      int offset = int.parse(data['utc_offset'].substring(1, 3));
      DateTime now = DateTime.parse(data['datetime']);
      now = now.add(Duration(hours: offset));

      isNight = now.hour > 6 && now.hour < 20 ? false : true;
      time = DateFormat.jm().format(now);
    } catch (e) {
      time = 'error';
    }
  }
}
