import 'package:flutter/material.dart';
import 'package:aluramoveis/models/furniture.dart';
import 'package:aluramoveis/models/item_cart.dart';
import 'package:aluramoveis/pages/home.dart';

class CartList extends StatelessWidget {
  final List<ItemCart> cart = Home.itensCart;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.length,
      itemBuilder: (BuildContext context, int index) {
        ItemCart item = cart[index];
        Furniture furniture = item.furniture;
        return Container(
          margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('utils/assets/images/${furniture.image}'),
                  height: 92,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(furniture.title),
                      Text('${furniture.price}'),
                      Text('${item.quantity}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
