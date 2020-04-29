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

  bool _value = false;
  var text_controller = TextEditingController(); //Text

  void _onChanged(bool value) => setState(() => _value = value);

  void getValue(){
    if(_value){
      print("verdadero");
      text_controller.text = "Verdadero";
    }else{
      print("falso");
      text_controller.text = "Falso";
    }
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
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Elemento"),
              Switch(
                value: _value,
                onChanged: _onChanged,
                activeColor: Colors.green[600],
              ),
              RaisedButton(
                onPressed: getValue,
                child: Text("Get valor"),
                textColor: Colors.blue[400],
              ),
              TextField(
                controller: text_controller,
              ),
            ],
          ),
        )
      )
    );
  }
}
