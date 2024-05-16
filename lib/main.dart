import 'package:flutter/material.dart';
import 'package:moru_weather_app/splash_screen/splashScreen.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'We show weather for you',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      home: const SplashWidget(),
      // routes: {
      //   "homePage":(context)=>const HomePage(),
      //
      // },
    );
  }
}
