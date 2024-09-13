void main() {
  List<String> fruits = ['apple', 'banana', 'cherry'];
  print(fruits[1]);

  List<int> num = [1, 2, 4, 8, 10, 12];
  print(num[3]);

  Set<String> colors = {'red', 'yellow', 'blue'};
  colors.add('black');
  colors.remove('blue');
  print(colors);

  Map<String, int> ageMap = {
    'Balais': 69,
    'Sophia': 12
  };
  print(ageMap['Balais']);

  Map<String, int> ages = {
    'Vina': 35,
    'Sophia': 21,
    'Jennie': 21,
  };
  for (var all in ages.keys) {
    print('key:${ages[all]}');
  }
  ages.forEach((all, value) => print('$all:$value'));

  dynamic variable = 5;
  print(variable);

  variable='Hello';
  print(variable);
  variable = {1, 2, 3, 4, 5};
  print(variable);

  dynamic name='Xavier';
  print(name.length);

  name="Melissa";
  print(name.length);
}