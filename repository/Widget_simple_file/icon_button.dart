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

  String _myText = "Hola Mundo!";

  //function for RaisedButton and FlatButton
  void _changeText(String text){
    setState(() {
      _myText = text;
    });
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: <Widget>[
            Text(_myText),
            RaisedButton(
              onPressed: () => _changeText("Raised"),
              child: Text("Change text"),
            ),
            FlatButton(
              onPressed: ()=> _changeText("Flat"),
              child: Text("Flat button"),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _changeText("Icon button"),
            )
          ],
        ),
      )
    );
  }
}