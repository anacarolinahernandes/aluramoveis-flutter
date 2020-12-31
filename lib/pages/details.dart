import 'package:aluramoveis/models/furniture.dart';
import 'package:aluramoveis/widgets/card_details.dart';
import 'package:aluramoveis/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final Furniture furniture;

  const Details({this.furniture});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('utils/assets/images/${furniture.image}'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          title: '',
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(32),
            child: CardDetails(
              furniture: furniture,
            ),
          ),
        ),
      ),
    );
  }
}
