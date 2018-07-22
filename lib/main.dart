import 'package:flutter/material.dart';

import './product_manager.dart';


//main function will always be there and never delete it
 void main() //flutter calls this function on its own
 {
    //attach/mount widget to show something on the screen
   runApp(MyApp());//this will run the widget and shows the app
 }
 //or you can use the arrow too for the main method like void main()=>runApp(<appname>());

 //to create our own root widget
 class MyApp extends StatelessWidget {//now we are not managing any widget here so we will return back to Stateless widget
 //create as many StatelessWidget as possible and make only few StatefulWidget

   //add features or property like functions or variables
   //flutter doesn't know if the class is widget, we need to add something and that is to extend from flutter framework
   //because statelesswidget can't be used to change the widget and will only call build function the first time, so we need to change it to statefulwidget

  //underscore is just a convention for the classes that should not be used by the other file/class
  @override //adding annotation: it tells dart and flutter that we override a method to widgets
  Widget build(BuildContext context) {

    //needed to make the widget be drawable to the screen through the return, and a widget in flutter needs to return another widget

    //this method takes argument i.e. context which is the meta information about the app
    return MaterialApp( //now this can be configured to draw something to the screen by passing argument as name:value
      theme: ThemeData( //theme data takes so many colour styles and combination sets

        //you can also set the brightness of your app
        brightness: Brightness.dark, //dark will make the previoud white area dark, btw we can use any.

        primarySwatch: //swatch is a set of colour where we define a colour and rest is automatically decided
        Colors.deepOrange, //now the appbar and other things in the app will be orange instead of default blue

        //we can also set a dedicated
        accentColor: Colors.deepPurple
      ),
      home: Scaffold( //scaffold creates a new page in app with nice white background to add appbar and all and we need to pass argument for that
        appBar: AppBar( //needs another widget as title to set the title of the app
          title: Text('EasyList'),
        ),
        body: ProductManager(startingProduct: 'My Profile'),
      ),
    );
  } //its like widgets inside widgets
}