import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:my_app/dashboard.dart';
import 'package:my_app/signup.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreenHome(),
    );

  }
}
class LoginScreenHome extends StatefulWidget{
  @override
  State<LoginScreenHome> createState() => _SignInScreenHomeState();
}

class _SignInScreenHomeState extends State<LoginScreenHome> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  void CheckInput (){
    if(usernameController.text.isEmpty){
      print("Username is Empty");
      AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          title: 'Error',
          desc: "Username is empty",
          btnOkOnPress: (){
          },
          width: 500
      ).show();

    }
    else if(passwordController.text.isEmpty){
      print("Password is Empty");
      AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          title: 'Error',
          desc: "Password is empty",
          btnOkOnPress: (){
          },
          width: 500
      ).show();
    }
    else{
      Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Dashboard()));
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: SizedBox(
              width: 400,
              child: Card(
                elevation: 8.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("Please Input Username and Password"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email, size: 24),
                            border: OutlineInputBorder(),
                            label: Text("Username")
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_rounded, size: 24),
                            border: OutlineInputBorder(),
                            label: Text("Password")
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(height: 40.0,
                        width: MediaQuery.of(context).size.width/1.2,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black
                            ),
                            onPressed:(){

                              CheckInput();
                            },
                            child: Text('Login')),


                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: [
                        Text("No account?"),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=> SignupHome()));
                          },
                          child: Text("Click Here"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(title: Text('Login Screen'), leading: IconButton(
          onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=> Dashboard()));
          },
          icon: Icon(Icons.arrow_back),
        ),
          backgroundColor: Colors. blueAccent,
        )
    );


  }
}


