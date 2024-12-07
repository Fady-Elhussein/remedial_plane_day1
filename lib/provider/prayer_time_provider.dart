import 'package:flutter/material.dart';
import 'package:remedial_plane_day1/model/prayer_time_model.dart';
import 'package:remedial_plane_day1/services/prayer_time_service.dart';

class PrayerTimeProvider extends ChangeNotifier{
  PrayerTimeModel? prayerTimeModel;
 getPrayerTimeData() async{
  prayerTimeModel= await PrayerTimeService.getPrayerTimes();
  notifyListeners();
 }


}