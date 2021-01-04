import 'package:aluramoveis/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:aluramoveis/models/furniture.dart';
import 'package:aluramoveis/models/item_cart.dart';

class CardDetails extends StatelessWidget {
  final formatPrice = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final Furniture furniture;
  final Function updatePage;

  CardDetails({this.furniture, this.updatePage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              furniture.title,
              style: Theme.of(context).textTheme.headline1,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: Text(
                furniture.description,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  formatPrice.format(furniture.price),
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    _verifyListItem(
                      Home.itensCart,
                      ItemCart(
                        quantity: 1,
                        furniture: furniture,
                      ),
                    );
                  },
                  child: Text(
                    'Comprar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _addItemToCart(item) {
    Home.itensCart.add(item);
    updatePage();
  }

  void _verifyListItem(List<ItemCart> list, ItemCart item) {
    int indexFurniture = list.indexWhere((item) => item.furniture == furniture);

    // se o índice for encontrado, ele retorna 0, se não, retorna -1
    if (indexFurniture >= 0) {
      list[indexFurniture].quantity++;
    } else {
      _addItemToCart(item);
    }
  }
}
