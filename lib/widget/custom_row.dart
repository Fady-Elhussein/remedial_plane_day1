import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget{
  String prayerName;
  String prayerTime;

  CustomRow({super.key,required this.prayerTime,required this.prayerName, });
  @override
  Widget build(BuildContext context) {
      return Container(
        color: Colors.grey,
        child: Row(
          children: [
            Text(prayerName),
            SizedBox(width: 100,),
            Text(prayerTime),
          ],
        ),
      );
  }

}