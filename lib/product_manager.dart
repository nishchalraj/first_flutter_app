import 'package:flutter/material.dart';

//separating the import from the package related import
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget{
  //here we make a StatefulWidget because we want to manage the things and hence there will be changes possible

  final String startingProduct;

  ProductManager(/*now this is a named argument*/{this.startingProduct /*now we are adding a default product*/ = 'Sweets Tester'})
  //now that allowed us to delete startingProduct: 'Food Tester' from the ProductManager part of body from the main.dart file
  {
    print('[ProductManager Widget] Constructor');
  }

  //the following state object is generic type and allows us to pass information too
  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState');
    return _ProductManagerState();
  }

}

/*when creating a new widget flutter checks that what are the things that need to be changed, it doesn't change the whole thing of the screen
and this helps in its performance efficiency */

class _ProductManagerState extends State<ProductManager> {
  List<String> /*because list is a generic type hence we will define what the list should be of*/ _products = [];//property

  //special method that is provided by the State
  @override
  void initState() {
    print('[ProductManager Widget] initState');

    //we dont call set state is initstate runs before build runs
    _products.add(widget.startingProduct); //widget is provided by the state object and gives us access to connect to the statefulwidget and to its properties

    super.initState(); //super always is the base class we are extending so don't delete that and picture to create it in the end after you execute the code
  }

  //in this app the following update is not happening, this is just to understand the behaviour
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager Widget] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product){
    setState(() {
      _products.add(product); //this is not recognised by flutter outside the setState()
      print(_products); //this is a debugging process
    });

  }


  @override
  Widget build(BuildContext context) {
    print('[ProductManager Widget] build');
    return Column(children: [Container(
      margin: /*to add space for buttons we add class provided with a constructor all(<float pixel>)*/EdgeInsets.all(10.0),
      child: ProductControl(_addProduct),
    ),
      Products(_products) //for this to be usable we need to import it
    ],);
  }
}