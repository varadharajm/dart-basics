
void main(){
  var dog = Dog();
  print('Dog details');
  dog.breed='Labrador';
  dog.color='Block';
  print(dog.breed);
  print(dog.color);
  dog.bark();
  dog.eat();
print('');
  var cat =Cat();
  print('Cat details');
  cat.color='White';
  cat.age=2;
  print(cat.color);
  print(cat.age);
  cat.eat();
  cat.meow();
  print('');
  var animal =Animal();
  print('Animal details');
  animal.color='brown';
  print(animal.color);
  animal.eat();
  print('');


}

class Animal {
late String color;
void eat(){
  print('Eat !');
}
}


class Dog extends Animal{
  late String breed;

  void bark(){
    print('Bark !');
  }
}


class Cat extends Animal{
  late int age;

  void meow(){
    print('Meow !');
  }
}