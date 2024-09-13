import 'dart:async';

Future<String>fetchUserOrder(){
  return Future.delayed(
 Duration(seconds:3),()=>'Isang green flag \n Soft spoken \n \n Emotional Intelligent',);
}
void main()async{
  print('Fetching user order...');
  String order= await fetchUserOrder();
  print('User order: $order');
}