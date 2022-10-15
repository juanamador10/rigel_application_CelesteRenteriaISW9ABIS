import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../screens/product_details_screen.dart';
class CategoryButton1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddProductScreen()));
                          },
                         child: Icon(Icons.apple_sharp
                         , color: Colors.grey[200], size: 30,),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            primary: Colors.orange[200],
                           ),
                        ),
                        Text("Fruit")
        ],
      )
    );
  }
  
}

class CategoryButton2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddProductScreen()));
                          },
                         child: Icon(Icons.cookie_sharp
                         , color: Colors.grey[200], size: 30,),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            primary: Colors.orange[200],
                            ),
                        ),
                        Text("Cookies")
        ],
      )
    );
  }
  
}