import 'package:flutter/material.dart';
import 'package:json_api_app/HomeScreen.dart';

void main() async {

  var homeScreenApi = new HomeScreenApi();
  String data = await(homeScreenApi.getData());
  print(data);
  runApp(new MaterialApp(
    home: HomeScreenApi(),
    title: 'HomeScree',
  ));

}
