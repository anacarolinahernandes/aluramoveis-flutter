import 'package:flutter/material.dart';

class CarButton extends StatelessWidget {
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
        child: Image(
          image: AssetImage('utils/assets/icons/carrinho.png'),
          height: 32,
        ),
      ),
    );
  }
}
