import 'package:aluramoveis/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Detalhes',
      ),
      body: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/carrinho');
        },
        child: Text('Vá para o carrinho'),
      ),
    );
  }
}
