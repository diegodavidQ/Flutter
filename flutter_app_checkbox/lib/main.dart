import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState()=> _State();

}

class _State extends State<MyApp>{

  bool _isChecked = false;
  var text_controller = TextEditingController(); //Text

  void onChanged(bool value){
    setState(() {
      _isChecked = value;
    });
  }

  void getValue(){
    if(_isChecked) {
      print("Check is true");
      text_controller.text = "Check is true";

    }else{
      print("Check is false");
      text_controller.text = "Check is false";
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox example"),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Opcion"),
              Checkbox(value: _isChecked,
                onChanged: (bool value){onChanged(value);},
              ),
              RaisedButton(
                onPressed: getValue, //change text text_controller
                child: Text("Click"),
              ),
              TextField(
                controller: text_controller,
              ),
            ],
          ),
        ),
      ),
    );
  }

}