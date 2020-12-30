import 'package:aluramoveis/widgets/element_product.dart';
import 'package:flutter/material.dart';
import 'package:aluramoveis/models/furniture.dart';

class ElementGridProducts extends StatelessWidget {
  final Furniture furniture;

  const ElementGridProducts({this.furniture});

  @override
  Widget build(BuildContext context) {
    return ElementProduct(
      image: furniture.image,
      title: furniture.title,
    );
  }
}
