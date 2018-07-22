import 'package:flutter/material.dart';
//you need to import because it stands alone

class Products extends StatelessWidget{
  final List<String> products; //final tells that the value never changes

  //now we will make a constructor so that we know which code should run when this widget is created
  Products([this.products= const []]){
    print('[Products Widget] Constructor'); //to print in console
  }


  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');

    return  Column(
      children: products
          .map(
              (element) => Card(
                child: Column(
                  children: <Widget>[ //child holds one widget and column hold list of widgets
                    Image.asset('assets/profile.jpg'),
          //make a folder (here 'assests') that will have all the media used in the app and we have to inform flutter about the image by going to the pubspec.yaml and defining the assets there
                    Text(element)
                  ],
                ),
              )
          )
        .toList(),
    );
  }

}

