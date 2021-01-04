import 'package:aluramoveis/pages/home.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho');
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            )),
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Home.itensCart.length > 0
            ? Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('utils/assets/icons/carrinho.png'),
                    height: 32,
                  ),
                  Indicator()
                ],
              )
            : Image(
                image: AssetImage('utils/assets/icons/carrinho.png'),
                height: 32,
              ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
