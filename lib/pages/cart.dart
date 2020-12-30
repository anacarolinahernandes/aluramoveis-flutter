import 'package:aluramoveis/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Carrinho',
        showCarIcon: false,
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
