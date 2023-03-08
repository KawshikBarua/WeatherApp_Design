import 'package:get/get.dart';

class AlterTheme extends GetxController{
  var isDarkTheme = false.obs;

  void change(bool value){
    isDarkTheme.value = value;

  }
}