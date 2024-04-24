import 'dart:io';

// Define an abstract class representing a Living Being
abstract class LivingBeing {
  void sleep();
  void eat();
}

// Animal class implementing the LivingBeing interface
class Animal implements LivingBeing {
  String name;
  String colour;
  String origin;

  // Constructor for Animal class
  Animal(this.name, this.colour, this.origin);

  // Implementation of sleep method
  @override
  void sleep() {
    print('The animal is sleeping');
  }

  // Implementation of eat method
  @override
  void eat() {
    print('The animal is eating');
  }
}

// Dog class extending Animal class
class Dog extends Animal {
  String breed;
  String meal;

  // Constructor for Dog class
  Dog({
    required String name,
    required String colour,
    required String origin,
    required this.breed,
    required this.meal,
  }) : super(name, colour, origin); // Forward required parameters to superclass constructor

  // Override sleep method for Dog class
  @override
  void sleep() {
    print('The dog is sleeping');
  }
}

// Rat class extending Animal class
class Rat extends Animal {
  String size;
  String mammal;

  // Constructor for Rat class
  Rat({
    required String name,
    required String colour,
    required String origin,
    required this.size,
    required this.mammal,
  }) : super(name, colour, origin); // Forward required parameters to superclass constructor

  // Override eat method for Rat class
  @override
  void eat() {
    print('The rat eats cheese');
  }
}

// Bird class
class Bird {
  String name;
  String location;

  // Constructor for Bird class
  Bird(this.name, this.location);

  // Factory method to create a Bird from a file
  factory Bird.fromFile(String filePath) {
    // Read the file
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();

    // Parse the data and create a Bird instance
    return Bird(lines[0], lines[1]);
  }
}

// Main function
void main() {
  // Create an instance of Animal
  var mypet = Animal('smoky', 'grey', 'kenyan');
  print('name: ${mypet.name}');
  print('colour: ${mypet.colour}');
  print('origin: ${mypet.origin}');

  // Call sleep method of Animal
  mypet.sleep();

  // Create an instance of Dog
  var myDog = Dog(
    name: 'Garfield',
    colour: 'Orange',
    origin: 'Nairobian',
    breed: 'Golden Retriever',
    meal: 'Bone',
  );
  print('name: ${myDog.name}');
  print('colour: ${myDog.colour}');
  print('origin: ${myDog.origin}');
  print('breed: ${myDog.breed}');
  print('meal: ${myDog.meal}');

  // Call sleep method of Dog
  myDog.sleep();

  // Create an instance of Rat
  var thisRat = Rat(
    name: 'Jerry',
    colour: 'Brown',
    origin: 'American',
    size: 'Small',
    mammal: 'Rodent',
  );
  print('name: ${thisRat.name}');
  print('colour: ${thisRat.colour}');
  print('origin: ${thisRat.origin}');
  print('size: ${thisRat.size}');
  print('mammal: ${thisRat.mammal}');

  // Call eat method of Rat
  thisRat.eat();

  // Path to the file containing bird data
  String filePath = 'bird_data.txt';

  // Create a Bird instance from the file
  Bird donaldduck = Bird.fromFile(filePath);
  print('name: ${donaldduck.name}');
  print('location: ${donaldduck.location}');


  // A method that demonstrates the use of a loop
  for (var char in donaldduck.name.split('')) {
    print(char);
  }

}
