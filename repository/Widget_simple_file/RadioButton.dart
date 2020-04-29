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

  int _value = 0;
  var text_controller = TextEditingController(); //Text

  void _handleRadio(int value){
    setState(() {
      _value = value;
      switch(_value){
        case 0:
          print("0000000000");
          text_controller.text = "Opción 1";
          break;
        case 1:
          print("11111111111");
          text_controller.text = "Opción 2";
          break;
        case 2:
          print("22222222222");
          text_controller.text = "Opción 3";
          break;
      }
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Selecciona una respuesta"),
              Divider(
                height: 5.0,
                color: Colors.blue[800]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                      value: 0,
                      groupValue: _value,
                      onChanged: _handleRadio),
                  Text("Opcion 1"),
                  Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: _handleRadio),
                  Text("Opcion 2"),
                  Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: _handleRadio),
                  Text("Opcion 3")
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.blue[400]
              ),
              TextField(
                controller: text_controller,
                enabled: false,
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      )
    );
  }
}