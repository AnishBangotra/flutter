# Layouts

###  Flutter incorporates a user interface layout functionality into the widgets itself. Flutter provides quite a lot of specially designed widgets like Container, Center, Align, etc., only for the purpose of laying out the user interface. Widgets build by composing other widgets normally use layout widgets.There are widgets supporting in layout with single and multiple childs.

### First, you need to select a Layout widget. Then, create a visible widget and add the visible widget to the layout widget. Finally, add the layout widget to the page where you want to display.

## Let's start with common single child widget out there, Flutter provides us many single child widgets to make the app UI attractive. If we use these widgets appropriately, it can save our time and makes the app code more readable. The list of different types of single child widgets are:

### Container: It is the most popular layout widget that provides customizable options for colors, positioning, and sizing of widgets.
```c++
Center(  
  child: Container(  
    margin: const EdgeInsets.all(15.0),  
    color: Colors.blue,  
    width: 42.0,  
    height: 42.0,  
  ),  
)  
```
### Padding: It is a widget that is used to arrange its child widget by the given padding. It contains EdgeInsets and EdgeInsets.fromLTRB for the desired side where you want to provide padding.
```c++
const Greetings(  
  child: Padding(  
    padding: EdgeInsets.all(13),  
    child: Text('Welcome to flutter!'),  
  ),  
)  
```
### Align: It is a widget, which aligns its child widget within itself and sizes it based on the child's size. It provides more control to place the child widget in the exact position where you need it.
```c++
Center(  
  child: Container(  
    height: 110.0,  
    width: 110.0,  
    color: Colors.blue,  
    child: Align(  
      alignment: Alignment.topLeft,  
      child: FlutterLogo(  
        size: 50,  
      ),  
    ),  
  ),  
);
```
Here **Center** allows you to center the child widget within itself.

### SizedBox: This widget allows you to give the specified size to the child widget through all screens.
```c++
SizedBox(  
  width: 300.0,  
  height: 450.0,  
  child: const Card(child: Text('Hello JavaTpoint!')),  
)  
```

## Example
```c++
import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  // It is the root widget of your application.  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Multiple Layout Widget',  
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(  
        // This is the theme of your application.  
        primarySwatch: Colors.green,  
      ),  
      home: MyHomePage(),  
    );  
  }  
};  
class MyHomePage extends StatelessWidget {  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(title: Text("ScreenFit Widget")),  
        body: Center(  
        child: FittedBox(child: Row(  
          children: <Widget>[  
            Container(  
              child: Image.asset('assets/homeScreen.png'),  
              ),  
              Container(  
                child: Text("This is a widget"),  
              )  
            ],  
          ),  
          fit: BoxFit.contain,  
        )  
      ),  
    );  
  }  
};  
```
### FittedBox: It scales and positions the child widget according to the specified fit.

## Now there are multiple child widgets, which contains more than one child widget, and the layout of these widgets are unique. For example, Row widget laying out of its child widget in a horizontal direction, and Column widget laying out of its child widget in a vertical direction. If we combine the Row and Column widget, then it can build any level of the complex widget.

### Row: It allows to arrange its child widgets in a horizontal direction.

### Column: It allows to arrange its child widgets in a vertical direction.

### ListView: It is the most popular scrolling widget that allows us to arrange its child widgets one after another in scroll direction.

### GridView: It allows us to arrange its child widgets as a scrollable, 2D array of widgets. It consists of a repeated pattern of cells arrayed in a horizontal and vertical layout.

### Expanded: It allows to make the children of a Row and Column widget to occupy the maximum possible area.

### Stack: It is an essential widget, which is mainly used for overlapping several children widgets. It allows you to put up the multiple layers onto the screen

Let's understand better with an example
```c++
import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  // It is the root widget of your application.  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Multiple Layout Widget',  
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(  
        // This is the theme of your application.  
        primarySwatch: Colors.blue,  
      ),  
      home: MyHomePage(),  
    );  
  }  
};  
class MyHomePage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Center(  
      child: Container(  
        alignment: Alignment.center,  
        color: Colors.white,  
        child: Stack(  
          children: <Widget>[  
            // Max Size  
            Container(  
              color: Colors.blue,  
            ),  
            Container(  
              color: Colors.pink,  
              height: 400.0,  
              width: 300.0,  
            ),  
            Container(  
              color: Colors.yellow,  
              height: 220.0,  
              width: 200.0,  
            )  
          ],  
        ),  
      ),  
    );  
  }  
};  
```
