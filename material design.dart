import 'package:flutter/material.dart';
import 'package:ramac/main.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
Widget build(BuildContext context){
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
    title: Text ('Material Design App'),
    ),
    body: Center(
    child: ElevatedButton(
    onPressed: (){
  },
  child: Text('Press Me')),
),
),
);
}
}