# dart class with constructor

### A constructor function of the class is implicitly called by the Dart when an object is created from it.

### A constructor function is generally used initialize instance variables,
with values passed by the user while creating an object.

```c++
void main() {
	// create 'anish' object
	Person anish = new Person('Anish', 'Bangotra');
	print("Full name: ${ anish.getFullName() }");
	print("Age: ${ anish.age }");
}

// Person class with constructor
class Person {
	//variables with null value
	String firstName, lastName;
	int age;

	//constructor function
	Person( String firstName, String lastName, [ int age = 20 ]) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
	}

	//instance methods
	String getFullName() {
		return this.firstName + " " + this.lastName;
	}
}
```	

## Basic Inheritance

### This principle leads us to an important concept in object-oriented programming that allows a class to inherit properties and methods from another class and to extend them.

### sub-class: the class that inherits properties and methods from another class, to fix ideas this is often called a child class;
### super-class: a class that is extended and that provides the basis for other classes to which it provides basic properties and methods, is often also called the parent class.

### Based on these concepts we define the concept of an animal with classes and then we create a dog

```c++
class Animal {
  double _weight;

  Animal();

  void breathe(){
    print('I am breathing fresh air');
  }
  void setWeight(double newWeight){
    this._weight = newWeight;
  }
  double getweight(){
    return _weight;
  }
}
```
### Dog class that inherits data from Animal class using extends keyword
```c++
class Dog extends Animal {
  int _legs;

  Dog();

  void run(){
    print('I am running on my legs');
  }
  void setLegs(int newLegs){
    this._legs = newLegs;
  }
  int getLegs(){
    return _legs;
  }
}

void main() {

  Dog myPuppy = new Dog();
  myPuppy.setLegs(4);
  myPuppy.setWeight(4.5);
  myPuppy.breathe();
  myPuppy.run();
  print('My puppy weight is ${myPuppy.getweight()} kg and it has got ${myPuppy.getLegs()} legs.');
}
