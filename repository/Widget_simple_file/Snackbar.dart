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
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void _showSnack(){
    _scaffold.currentState.showSnackBar(SnackBar(content: Text('Esto es un Snac')));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffold, //key for snackbar
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: _showSnack,
                child: Text('Click'),
              )
            ],
          )
        )
      )
    );
  }
}