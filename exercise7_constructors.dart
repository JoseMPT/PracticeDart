void main(){
  final Hero ironman = new Hero(name: 'Tony Stark', power: 'Money', isAlive: false);
  print('Hero normal: $ironman');

  final Map<String, dynamic> rawJson = {
    'name':'Tony Stark',
    'power':'Money',
    'isAlive':true
  };

  final Hero ironman2 = Hero.fromJson(rawJson);
  print('Hero with Json: $ironman2');
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson(Map<String, dynamic> json) :
      name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString(){
    return '$name, $power, Is alive?: ${isAlive ? 'Yes' : 'No'}';
  }
}