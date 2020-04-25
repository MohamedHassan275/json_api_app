import 'package:flutter/material.dart';
import 'package:json_api_app/HomeScreen.dart';

void main() async {

//  var homeScreenApi = new HomeScreenApi();
//  String data = await(homeScreenApi.getData());
//
//  for(int i =0 ; i < data.length ; i++){
//    print('title =  ${data[i]}');
//  }
  runApp(new MaterialApp(
    home: HomeScreenApi(),
    title: 'HomeScree',
  ));

}
