import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0,15),
              spreadRadius: 2,
              blurRadius: 20
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 200,
          width: size.width *0.85,
          decoration:  BoxDecoration(
              color: Colors.purple.shade400
          ),
          child: Stack(
            children: [
              Positioned(
                top: -10,
                left: -80,
                child: Container(
                  height: 230,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.purple.shade300,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1,1),
                            spreadRadius: 1,
                            blurRadius: 20
                        )
                      ]
                  ),
                ),
              ),
              Positioned(
                top: -10,
                right: -20,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.purple.shade500,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1,1),
                            spreadRadius: 1,
                            blurRadius: 20
                        )
                      ]
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(flex: 1,child: Center(
                    child: Lottie.asset("asset/sunny.json",
                    repeat: true,
                    height: 140,
                    width: 150,
                    fit: BoxFit.cover),
                  ),),
                  Expanded(flex: 1,child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Tomorrow",style: TextStyle(color: Colors.purple.shade50,fontSize: 20,
                      fontWeight: FontWeight.w300),),
                      RichText(
                        text:  TextSpan(
                          children: [
                            TextSpan(text: "23",style: TextStyle(fontSize: 70,color: Colors.purple.shade50)),
                            TextSpan(text: "/27°",style: TextStyle(fontSize: 40,color: Colors.purple.shade100)),
                          ]
                        ),
                      ),
                      Text("Rainy-Cloudy",style: TextStyle(color: Colors.purple.shade100,fontSize: 15,
                          fontWeight: FontWeight.w600),),
                    ],
                  ),),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
