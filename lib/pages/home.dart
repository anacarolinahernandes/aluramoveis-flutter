import 'package:flutter/material.dart';
import 'package:aluramoveis/furnitures.dart';
import 'package:aluramoveis/models/item_cart.dart';
import 'package:aluramoveis/widgets/custom_appbar.dart';
import 'package:aluramoveis/widgets/grid_products.dart';

class Home extends StatefulWidget {
  static List<ItemCart> itensCart = List();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(title: 'Lojinha Alura'),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Produtos',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Flexible(
            child: GridProducts(
              furnitures: furnitures,
              update: update,
            ),
          ),
        ],
      ),
    );
  }

  void update() {
    setState(() {});
  }
}
