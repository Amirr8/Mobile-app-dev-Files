class Animal{
  String name;
  Animal(this.name);
  void speak(){
    print("$name make a sand");
  }
}
class Cat extends Animal{
  Cat (String name): super(name);

  void speak(){
    print("$name moew");
  }
}
void main() {

  int num = -1;
  int grade = 90;
  String day = 'monday';
  int z = 0;
  int x = 10;
  if (num >= 0) {
    print("positive");
  } else {
    print("negative");
  }


  if (grade >= 90) {
    print("GRADE A");
  } else if (grade >= 80) {
    print("GRADE B");
  } else {
    print("GRADE C");
  }


  switch (day) {
    case'Monday':
    case'Tuesday':
    case'Wednesday':
      print("Its a Weekday");
      break;
    case'thursday':
      print("Its a almost Friday");
      break;
    default:
      print("Its a Weekend");
  }



  for (int i = 0; i < 5; i++) {
    print("$i");
  }


  while (z < 10) {
    print("The value is $z");
    z++;
  }

  do {
    print("number is $x");
    x--;
  } while (x > 0);

  Animal animal=Animal('Generic Animal');
  Cat cat=Cat('Vermithor');
  animal.speak();
  cat.speak();


  try{
    int num2=5~/0;
    print(num2);
  }catch (e){
    print("ERROR: $e");
  }

  try{
    int result= divide (10,0);
    print(result);
  }catch (err){
    print("ERROR: $err");
  }finally{
    print("This code always run");
  }

  }
  int divide(int a, int b){
  if(b==0){
    throw IntegerDivisionByZeroException;
  }
  return a~/b;
  }


