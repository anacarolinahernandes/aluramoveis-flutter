import 'package:flutter/material.dart';
import 'package:aluramoveis/models/furniture.dart';
import 'package:aluramoveis/widgets/element_grid_products.dart';

class GridProducts extends StatelessWidget {
  final furnitures;

  GridProducts({this.furnitures});

  // List<String> nomes = [
  //   'Jon Snow',
  //   'Sansa Stark',
  //   'Arya Stark',
  //   'Robb Stark',
  //   'Bran Stark',
  //   'Eddard "Ned" Stark'
  // ];

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
        );
      },
    );

    //   return Scaffold(
    //       body: GridView.builder(
    //     padding: const EdgeInsets.all(20),
    //     gridDelegate:
    //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    //     itemCount: nomes.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Container(
    //           padding: EdgeInsets.all(8),
    //           margin: EdgeInsets.all(8),
    //           child: Text(nomes[index]),
    //           color: Colors.teal[(index + 1) * 100]);
    //     },
    //   ));
  }
}
