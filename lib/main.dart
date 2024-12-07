import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remedial_plane_day1/provider/prayer_time_provider.dart';
import 'package:remedial_plane_day1/screen/home_screen.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PrayerTimeProvider()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }

}