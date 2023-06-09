abstract class Animal {

}

abstract class Mammal extends Animal{

}
abstract class Bird extends Animal{

}
abstract class Fish extends Animal{

}

mixin class Flying {
  void fly() => print('Estoy volando');
}
mixin class Walking {
  void walk() => print('Estoy caminando');
}
mixin class Swimming {
  void swim() => print('Estoy nadando');
}

class Dolphin extends Mammal with Swimming{}
class Bat extends Mammal with Flying, Walking{}
class Cat extends Mammal with Walking{}

class Dove extends Bird with Flying, Walking{}
class Duck extends Bird with Flying, Walking, Swimming{}

class Shark extends Fish with Swimming{}
class FlyingFish extends Fish with Swimming, Flying{}

void main(){
  final flipper = Dolphin();
  flipper.swim();

  final batman = Bat();
  batman.fly();
  batman.walk();

  final namor = Duck();
  namor.walk();
  namor.fly();
  namor.swim();
}