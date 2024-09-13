import 'dart:async';

Future<void>main() async{
  print('Fetching data...');
  String data=await fetchData();
  print('data recieved: $data');
}
Future<String>fetchData(){
  return Future.delayed(Duration(seconds:2),(){
    return'FetchData';
  });
}