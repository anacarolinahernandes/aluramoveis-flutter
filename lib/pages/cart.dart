import 'package:aluramoveis/widgets/cart_list.dart';
import 'package:aluramoveis/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: 'Carrinho',
        showCarIcon: false,
      ),
      body: CartList(
        update: update,
      ),
    );
  }

  update() {
    setState(() {});
  }
}
