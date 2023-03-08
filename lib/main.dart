import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Binding/Bindings.dart';
import 'package:weather_app/Screens/MyHomePage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,//const Color.fromRGBO(243, 233, 245, 1),
        primarySwatch: Colors.purple,
        primaryColorLight: Colors.purple.shade100,
        primaryColorDark: Colors.purple.shade100
      ),
      home: const HomePage(),
    );
  }
}
