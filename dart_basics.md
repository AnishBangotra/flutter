# Dart Programming basics

### Dart is an open-source general-purpose programming language. It is originally developed by Google. Dart is an object-oriented language with C-style syntax. It supports programming concepts like interfaces, classes, unlike other programming languages Dart doesn’t support arrays.

```c
void main() {
   print("Dart language is easy to learn");
}
```

## Variables and Data types

### Variable is named storage location and Data types simply refers to the type and size of data associated with variables and functions.

```c
var name = "Dart";
```
### The final and const keyword are used to declare constants.

```c
void main() {
   final a = 12;
   const pi = 3.14;
   print(a);
   print(pi);
}
```

## Dart supports Numbers, Strings Booleans, Lists and Maps

### lists represents a collection of objects
```c
void main() {
   var list = [1,2,3,4,5];
   print(list);
}
```
### Maps can be defined as
```c
void main() {
   var mapping = {'id': 1,'name':'Dart'};
   print(mapping);
}
```
### Dart supports If, If..else and switch statements.

Also, Loops are used to repeat a block of code until a specific condition is met. Dart supports for, for..in , while and do..while loops.

Let us understand a simple example about the usage of control statements and loops −
```c
void main() {
   for( var i = 1 ; i <= 10; i++ ) {
      if(i%2==0) {
         print(i);
      }
   }
}
```
The above code prints the even numbers from 1 to 10.
