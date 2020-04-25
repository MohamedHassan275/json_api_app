import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class HomeScreenApi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenApiListner();
  }

  Future<List> getData() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/posts';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }


}

class HomeScreenApiListner extends State<HomeScreenApi>{

  getMyData() async{
    var homeApi =new HomeScreenApi();
    List data;

    data = await(homeApi.getData());
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Center(
          child: new RaisedButton(onPressed: getMyData, child: new Text('Click me '),)

//          new Text('Hello Mohamed',
//          maxLines: 1,
//          style: new TextStyle(fontSize: 22,
//          color: Colors.deepPurple,
//          fontStyle: FontStyle.italic,
//          ),
//          ),
        ),
      ),
    );


  }


}