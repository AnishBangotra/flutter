# Widgets

### let us understand the actual concept behind creating the widgets and the different type of widgets available in Flutter framework.

## Stateless Widget

### The widgets whose state can not be altered once they are built are called stateless widgets. These widgets are immutable once they are built i.e any amount of change in the variables, icons, buttons, or retrieving data can not change the state of the app. Below is the basic structure of a stateless widget. Stateless widget overrides the build() method and returns a widget. For example, we use Text or the Icon is our flutter application where the state of the widget does not change in the runtime. It is used when the UI depends on the information within the object itself. Other examples can be Text, RaisedButton, IconButtons.

### As simple as your material dart MyApp run widget

```c++
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
### Here the name of the stateless widget is MyApp which is being called from the runApp() and extends a stateless widget. Inside this MyApp a build function is overridden and takes BuildContext as a parameter. This BuildContext is unique to each and every widget. The widgets of a Flutter application are displayed in the form of a Widget Tree where we connect the parent and child widgets to show a relationship between them.

### Let's check out an another one but by defining some constants and using them through constructor.

```c++
class MyHomePage extends StatelessWidget { 
   MyHomePage({Key key, this.title}) : super(key: key); 
   
   final String title; 
   @override 
   Widget build(BuildContext context) {
      return Scaffold( 
         appBar: AppBar(title: Text(this.title), ), 
         body: Center(child: Text( 'Flutter body',)),
      );
   }
}
```

### In this code, we have used title as one of the constructor argument and also used Key as another argument. The title is used to display the title and Key is used to identify the widget in the build environment.
Here, the build method calls the build method of Scaffold, which in turn calls the build method of AppBar and Center to build its user interface.


## Stateful Widget

### The widgets whose state can be altered once they are built are called stateful Widgets. These states are mutable and can be changed multiple times in their lifetime. This simply means the state of an app can change multiple times with different sets of variables, inputs, data. Stateful widget overrides the createState() and returns a State. It is used when the UI can change dynamically. Some examples can be CheckBox, RadioButton, Form, TextField.
Classes that inherit “Stateful Widget” are immutable. But the State is mutable which changes in the runtime when the user interacts with it.

### let's see a code displaying an image through flutter assets, this can be done specifying the assets in pubspec.yaml.

```c++
class MyHomePage extends StatelessWidget {
   MyHomePage({Key key, this.title}) : super(key: key); 
   final String title; 

   @override 
   Widget build(BuildContext context) {
      return Scaffold( 
         appBar: AppBar( title: Text(this.title) ), 
         body: Center( child: Image.asset("assets/person.png"))
      ); 
   }
}
```
