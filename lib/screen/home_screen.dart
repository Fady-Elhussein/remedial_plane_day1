import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remedial_plane_day1/provider/prayer_time_provider.dart';
import 'package:remedial_plane_day1/widget/custom_row.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: Consumer<PrayerTimeProvider>(
  builder: (context, prayerObject, child) {
   var objecofMdelInProvider =prayerObject.prayerTimeModel;
   if (objecofMdelInProvider==null){
     prayerObject.getPrayerTimeData();
     return CircularProgressIndicator();
   }else{
   return  ListView.builder(
         itemCount: objecofMdelInProvider.timings.length,
         itemBuilder: (context, index) {
           var prayerTimeKey=objecofMdelInProvider.timings.keys;
           var prayerNameValue=objecofMdelInProvider.timings.values;
          return CustomRow(prayerTime: prayerNameValue.elementAt(index),
             prayerName: prayerTimeKey.elementAt(index),);
         }
     );}
  }


),
    );
  }

}