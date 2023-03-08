import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Controller/Theme.dart';
import 'package:weather_app/Screens/WeeklyWeatherPage.dart';
import 'package:weather_app/utils/InfoCard.dart';

import '../utils/WeatherSummary.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool themeData=false;
  @override
  Widget build(BuildContext context) {

    String date = DateFormat.yMMMd().format(DateTime.now());
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Dhaka",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          actions: [
            Switch(value: this.themeData, onChanged: (value){
              if(value){
                setState(() {
                  this.themeData=value;
                });
                Get.changeTheme(ThemeData.dark());
              }
              else{
                setState(() {
                  this.themeData=value;
                });
                Get.changeTheme(ThemeData.light());
              }
            })
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.6,
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
                  Positioned(
                    top: size.height * 0.5,
                    left: size.width * 0.075,
                    child: const InfoCard(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 28.0,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: size.height * 0.35,
                        width: size.width * 0.75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.purple,
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 5),
                                  spreadRadius: 4,
                                  blurRadius: 20,
                                  color: Colors.black26)
                            ]),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              top: -50,
                              right: -50,
                              child: Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                    color: Colors.purple.shade800,
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(-1, -2),
                                          blurRadius: 10,
                                          spreadRadius: 7,
                                          color: Colors.black26)
                                    ]),
                              ),
                            ),
                            Positioned(
                              top: -50,
                              right: -50,
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                    color: Colors.purple.shade700),
                              ),
                            ),
                            Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "ThunderStorm",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ),
                                ShaderMask(
                                  shaderCallback: (bounds) =>
                                      const LinearGradient(
                                              colors: [
                                        Colors.white,
                                        Colors.purple
                                      ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter)
                                          .createShader(bounds),
                                  blendMode: BlendMode.srcATop,
                                  child: const Text(
                                    "25",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 160,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 40,
                      width: size.width * 0.375,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(1, 10),
                                blurRadius: 10,
                                spreadRadius: 1,
                                color: Colors.black38)
                          ],
                          color: const Color.fromRGBO(255, 255, 255, 0.8)),
                      child: Center(
                        child: Text(date.toString()),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.3,
                    left: size.width * 0.3,
                    child: SizedBox(
                        height: 170,
                        child: Lottie.asset("asset/sunny.json",
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const WeeklyWeatherPage())),
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Next 7 Days",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const WeeklyWeatherPage())),
                        child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Colors.grey,
                            )),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,itemCount) => const WeatherSummary(width: 50,),
                      separatorBuilder: (context,itemCount) => const SizedBox(width: 5,),
                      itemCount: 7),
                )
              ],
            ),

          ],
        ),

    );
  }
}
