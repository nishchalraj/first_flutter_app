import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{
  final Function addProduct; //this means the property will reference as a function

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return  RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: /*this needs a function reference*/ () {
      addProduct('Another Profile');
        }, /*this is anonymous function, as it is empty*/
      child: Text("Add Profile"),
    );
  }
}