import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text ('Cupertino Design App'),
        ),
        child: Center(
          child: CupertinoButton(
              onPressed: (){
              },
              child: Text('Press Me')),
        ),
      ),
    );
  }
}