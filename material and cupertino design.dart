import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
     theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mixed Designed App'),
        ),
        body: Center(
          child: CupertinoButton(
            color: CupertinoColors.activeBlue,
            onPressed: (){

            },child: const Text('Cupertino Button'),
          ),
        ),
      ),
    );
  }
}