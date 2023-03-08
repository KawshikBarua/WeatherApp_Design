import 'package:flutter/material.dart';
import 'package:weather_app/utils/DayInfoTile.dart';
import 'package:weather_app/utils/InfoCard.dart';
import 'package:weather_app/utils/WeatherCard.dart';

class WeeklyWeatherPage extends StatelessWidget {
  const WeeklyWeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Next 7 Days",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.53,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                const Color.fromRGBO(243, 233, 245, 1),
                                themeData.primaryColorLight,
                                themeData.primaryColorLight
                              ])),
                    ),
                    SafeArea(
                      child: SizedBox(
                        width: size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            WeatherCard(),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.3,
                      left: size.width * 0.075,
                      child: const InfoCard(),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: ListView.separated(
                      itemCount: 7,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (BuildContext context, int count) {
                        return const SizedBox(height: 10);
                      },
                      itemBuilder: (BuildContext context, int count) {
                        return  DayTile(days: Week.values[count].toString().split('.').last,);
                      }))
            ],
          )),
    );
  }
}
enum Week{
  Sun,Mon,Tue,Wed,Thu,Fri,Sat
}