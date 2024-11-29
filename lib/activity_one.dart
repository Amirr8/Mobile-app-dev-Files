import 'package:flutter/material.dart';
import 'dashboard.dart';

class ActivityOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ActivityOneHome());
  }
}

class ActivityOneHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors. blueAccent,
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90.0,
              backgroundImage: NetworkImage('pics/wawa.png'),
            ),
            Text('Amir Hedji N. Ramac'),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=> Dashboard()));
                },
                child: Text('To Dashboard')

            ),
          ],

        )),

        appBar: AppBar(title: Text('ActivityOne'), backgroundColor: Colors.greenAccent,),
        drawer: Drawer(),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('Hello World!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );

            // Find the ScaffoldMessenger in the widget tree
            // and use it to show a SnackBar.
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Icon(Icons.add),
        ));
  }
}



