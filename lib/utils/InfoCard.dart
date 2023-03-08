import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 150,
      width: size.width *0.85,
      decoration:  BoxDecoration(
          boxShadow: const[
            BoxShadow(color: Colors.black26,offset: Offset(0,5),spreadRadius: 1,blurRadius: 20)
          ],
          color:Get.isDarkMode? Colors.black87:Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.cloud_outlined,color: Colors.purple.shade600,size: 35,),
                const SizedBox(height: 10,),
                const Text("8km/h",style: TextStyle(fontWeight: FontWeight.w800),),
                const SizedBox(height: 5,),
                const Text("Wind",style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.water_drop_outlined,color: Colors.purple.shade600,size: 35,),
                const SizedBox(height: 10,),
                const Text("27%",style: TextStyle(fontWeight: FontWeight.w800),),
                const SizedBox(height: 5,),
                const Text("Humidity",style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.remove_red_eye_outlined,color: Colors.purple.shade600,size: 35,),
                const SizedBox(height: 10,),
                const Text("1.8km",style: TextStyle(fontWeight: FontWeight.w800),),
                const SizedBox(height: 5,),
                const Text("Visibility",style: TextStyle(color: Colors.grey),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
