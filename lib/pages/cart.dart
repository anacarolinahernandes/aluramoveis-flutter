import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:aluramoveis/pages/home.dart';
import 'package:aluramoveis/widgets/cart_list.dart';
import 'package:aluramoveis/widgets/custom_appbar.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final formatPrice = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  @override
  Widget build(BuildContext context) {
    double totalValue = _calculate();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: 'Carrinho',
        showCarIcon: false,
      ),
      body: _constructScreen(),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(32, 32, 32, 48),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Total',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              formatPrice.format(totalValue),
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }

  void update() {
    setState(() {});
  }

  double _calculate() {
    if (Home.itensCart.isNotEmpty) {
      return Home.itensCart
          .map((item) => item.furniture.price * item.quantity)
          .reduce((actualPrice, newPrice) => actualPrice + newPrice);
    }
    return 0;
  }

  Widget _constructScreen() {
    if (Home.itensCart.isNotEmpty) {
      return CartList(
        update: update,
      );
    } else {
      return Container(
        height: double.infinity,
        alignment: Alignment.center,
        child: Text(
          'Nenhum item no carrinho. Retorne ao início e selecione seus produtos :)',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3,
        ),
      );
    }
  }
}
