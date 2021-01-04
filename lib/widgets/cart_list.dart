import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:aluramoveis/models/furniture.dart';
import 'package:aluramoveis/models/item_cart.dart';
import 'package:aluramoveis/pages/home.dart';

class CartList extends StatefulWidget {
  final Function update;

  const CartList({this.update});

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final List<ItemCart> cart = Home.itensCart;
  final formatPrice = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.length,
      itemBuilder: (BuildContext context, int index) {
        ItemCart item = cart[index];
        Furniture furniture = item.furniture;
        return Container(
          margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
          height: 120,
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: AssetImage('utils/assets/images/${furniture.image}'),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          furniture.title,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(formatPrice.format(furniture.price)),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () => _decreaseQuantity(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.remove,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                Text('${item.quantity}'),
                                GestureDetector(
                                  onTap: () => _addQuantity(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _addQuantity(ItemCart item) {
    setState(() {
      item.quantity++;
      widget.update();
    });
  }

  void _decreaseQuantity(ItemCart item) {
    if (item.quantity > 1) {
      setState(() {
        item.quantity--;
        widget.update();
      });
    } else {
      _removeFurniture(item);
    }
  }

  void _removeFurniture(ItemCart item) {
    setState(() {
      Home.itensCart.remove(item);
      widget.update();
    });
  }
}
