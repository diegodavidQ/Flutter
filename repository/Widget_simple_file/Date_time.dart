import 'dart:math';

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

  DateTime selectedDate;
  var text_controller = TextEditingController(); //Text Date
  var text_controller_time = TextEditingController(); //Text Time

  //=============================================//
  //Date
  Future<Null> _selectedDate(BuildContext context) async{
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(), 
        firstDate: DateTime.now().subtract(Duration(days: 100)),
        lastDate: DateTime.now().add(Duration(days:100)));

    if(picked != null && picked != selectedDate){
        setState(() {
          selectedDate = picked;
          print(selectedDate);
          text_controller.text = selectedDate.toIso8601String();
        });
    }
  } //_selectedDate


  //=============================================//
  TimeOfDay _timeOfDay = TimeOfDay.now();
  //Time
  Future<Null> _selectedTime(BuildContext context) async{
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _timeOfDay
    );

    if(picked != null && picked != _timeOfDay){
      setState(() {
        _timeOfDay = picked;
        print("Time: ${picked.toString()}");
        text_controller_time.text = _timeOfDay.format(context);
      });
    }
  } // _selectedTime
  //=============================================//

  
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 18.0),
              RaisedButton(
                onPressed: ()=> {_selectedDate(context)},
                child: Text("Select Date"),
              ),
              Divider(
                height: 10.0,
                color: Colors.blue[400]
              ),
              TextField(
                controller: text_controller,
                enabled: false,
                textAlign: TextAlign.center,
              ),
              Divider(
                  height: 10.0,
                  color: Colors.green[700]
              ),
              RaisedButton(
                onPressed: ()=> {_selectedTime(context)},
                child: Text("Select Time"),
              ),
              Divider(
                  height: 10.0,
                  color: Colors.blue[400]
              ),
              TextField(
                controller: text_controller_time,
                enabled: false,
                textAlign: TextAlign.center,
              )
            ],
          )
        )
      )
    );
  }
}