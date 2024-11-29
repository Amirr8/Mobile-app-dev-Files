import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'activity_one.dart';
import 'loginscreen.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DashboardHome() ,
    );
  }
}
class DashboardHome extends StatefulWidget{
  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: InkWell(
        onTap:(){
          AwesomeDialog(
              context: context,
              dialogType: DialogType.question,
              title: 'Logout',
              desc: "Are you want to Logout",
              btnOkOnPress:(){
                Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=> LoginScreenHome()));
              },
              btnOkText: 'Yes',
              btnCancelText: 'No',
              btnCancelOnPress: (){

              }

          ).show();

        },
        child: Drawer(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage('pics/wawa.png'),
              ),
              Text("Menu",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Logout"),
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("List of Users"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Album"),
              ),

            ],
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
      ),
      appBar: AppBar(
        title: Text("ActivityOne"),
        backgroundColor: Colors. lightBlueAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.contacts), label: 'Contacts'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),

          ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90.0,
              backgroundImage: NetworkImage('pics/wawa.png'),
            ),
            Text(
              "Amir Hedji N. Ramac",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text("Bachelor of Science and Information Technology"),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=> ActivityOne()));
                },
                child: Text('To Activity One')
            ),
          ],
        ),
      ),
      backgroundColor: Colors.greenAccent,
    );

  }
}




