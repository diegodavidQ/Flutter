import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();
}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  padding: EdgeInsets.all(28.0),
                  child: Column(
                    children: <Widget>[
                      Image.network("https://res.cloudinary.com/diegod/image/upload/v1588189153/ios_android_omtt5j.png"),
                      Text('Diego'),
                      Text('David'),
                      
                    ],
                  ),
                ),
              )
            ],
          )
        )
      )
    );
  }
}