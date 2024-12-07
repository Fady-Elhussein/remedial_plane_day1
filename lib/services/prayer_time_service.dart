import 'package:dio/dio.dart';
import 'package:remedial_plane_day1/model/prayer_time_model.dart';

class PrayerTimeService {
 static Dio dio=Dio();
  
 static Future<PrayerTimeModel>  getPrayerTimes() async {

  try {
    Response response = await dio.get(
        "https://api.aladhan.com/v1/timingsByCity/07-12-2024?city=Giza&country=Egypt");
    print(response.data);
    if (response.statusCode == 200) {
      return PrayerTimeModel.fromJson(response.data);
    } else {
      throw Exception("there is an error");
    }
  } catch (error) {
    throw Exception(error);
  }
}
}
