import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartproj/Model/smartHomeModel/smartHomeModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SmartHomeController extends GetxController{
  var isLampon=false.obs;
  var isFlex=false.obs;
  var isLines=false.obs;
  var isStrip=false.obs;
  var isOffice=false.obs;
  var isKitchen=false.obs;


  List<SmartHomeModel> SmartHomeModelList = [
    SmartHomeModel( text: "Hue Outdoor \n Lamp",icon: Icons.lightbulb,),
    SmartHomeModel( text: "Kitchen Echo \n Flex",icon: Icons.kitchen,),
    SmartHomeModel( text: "Nainoleaf \n Lines",icon: Icons.lightbulb,),
    SmartHomeModel( text: "Nainoleaf \n Strip",icon: Icons.lightbulb,),
    SmartHomeModel( text: "Office Fan \n Flex",icon: FontAwesomeIcons.fan),
    SmartHomeModel( text: "Kitchen Fan\n Flex",icon: FontAwesomeIcons.fan,),
  ];

}