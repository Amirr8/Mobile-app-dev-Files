
import 'package:my_app/loginscreen.dart';
import 'asynchronous_programming.dart';
import 'package:flutter/material.dart';
import 'package:my_app/calculator.dart';



Future<void> main() async {
  Calculator calculate = Calculator();
  var sumResult = calculate.add(10, 5);
  var productResult = calculate.multiply(10, 5);
  var quotientResult = calculate.divide(10, 5);
  var differenceResult = calculate.subtract(10, 5);
  print("The Sum of 10+5 is $sumResult");
  print("The Product of 10*5 is $productResult");
  print("The Quotient of 10/5 is $quotientResult");
  print("The Difference of 10-5 is $differenceResult");

  greetings("Edzel Reeve C. Angus");
  await displayUsers();

  runApp(LoginScreen());



}

void greetings(String name) {
  print("Hello $name");
}

Future<void> displayUsers() async {
  AsyncProgram ap = AsyncProgram();

  var users = await ap.getUsers();
  for (var user in users) {
    var name = user['name'];
    print(name);
  }
}


