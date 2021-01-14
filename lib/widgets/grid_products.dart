import 'package:flutter/material.dart';
import 'package:aluramoveis/models/furniture.dart';
import 'package:aluramoveis/widgets/element_grid_products.dart';

class GridProducts extends StatelessWidget {
  final furnitures;
  final Function update;

  GridProducts({this.furnitures, this.update});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: furnitures.length,
      itemBuilder: (BuildContext context, int index) {
        final furniture = Furniture.fromJson(furnitures[index]);

        return ElementGridProducts(
          furniture: furniture,
          update: update,
        );
      },
    );
  }
}
