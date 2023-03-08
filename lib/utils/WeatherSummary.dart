import 'package:flutter/material.dart';

class WeatherSummary extends StatelessWidget {
  final double width;

  const WeatherSummary({Key? key, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 10,
                color: Colors.black26)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [Text("26°"), Icon(Icons.sunny,size: 30,), Text("11:00")],
      ),
    );
  }
}
