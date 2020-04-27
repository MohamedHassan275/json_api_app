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

  var homeApi =new HomeScreenApi();
  List data;
  List MyTextView =[];
 void getMyData() async{
   data = await(homeApi.getData());
   print(data);
   setState(() {
     MyTextView = data;
   });
//     for(int i =0 ; i < data.length ; i++){
//       print('id =  ${data[i]['id']} => title =  ${data[i]['title']} '
//           '=>   body =  ${data[i]['body']}');
//  }


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
      ),
      body: new ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          new Container(
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Center(
                      child: new RaisedButton(onPressed: getMyData, child: new Text('Click me '),)
                  ),
                  new Center(
                    child:  new Text('${MyTextView}',
                      style: new TextStyle(fontSize: 15,
                        color: Colors.deepPurple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                ],
              )

          ),
        ],
      )
    );


  }


}