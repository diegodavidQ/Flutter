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

  final teams = ['Barcelona', 'Real Madrid', 'Man U', 'Man City', 'PSG', 'Juventus',
  'Liverpool', 'Atletico de Madrid', 'Chelsea', 'Bayer Munich', 'Dormunt', 'Milan', 'Inter',
  'Arsenal', 'Sevilla'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      //body: ListView.builder(
      body: ListView.separated(
          itemCount: teams.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(teams[index]),
            );
          },
          separatorBuilder: (context, index){
            return Divider();
          }
      ),
    );
  }
}