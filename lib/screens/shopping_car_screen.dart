import 'package:flutter/material.dart';
import 'package:rigel_application/models/shoppingcar_model.dart';
import 'package:rigel_application/helpers/database_helper_shoppingcar.dart';

class ShoppingCarScreen extends StatefulWidget {
  final int productQuantity;
  ShoppingCarScreen({Key? key, required this.productQuantity})
      : super(key: key);
  @override
  State<ShoppingCarScreen> createState() => _ShoppingCarScreenState();
}

class _ShoppingCarScreenState extends State<ShoppingCarScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ShoppingCar>>(
        future: DatabaseHelper_ShoppingC.instance.getShoppingC(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ShoppingCar>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text("Loading..."),
              ),
            );
          } else {
            return snapshot.data!.isEmpty
                ? Center(child: Container(child: const Text("No products")))
                : ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: snapshot.data!.map(
                      (shopingcar) {
                        return Center(
                          child: Card(
                              child: ListTile(
                            title: Text(
                                'Title: ${shopingcar.title}, Price: ${shopingcar.price}, Quantity: ${shopingcar.quantity}'),
                          )),
                        );
                      },
                    ).toList());
          }
        });
  }
}
