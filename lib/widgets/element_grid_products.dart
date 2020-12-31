import 'package:aluramoveis/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:aluramoveis/models/furniture.dart';
import 'package:aluramoveis/widgets/element_product.dart';

class ElementGridProducts extends StatelessWidget {
  final Furniture furniture;

  const ElementGridProducts({this.furniture});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Details(
                    furniture: furniture,
                  )),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            )
          ],
        ),
        margin: EdgeInsets.all(12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ElementProduct(
            image: furniture.image,
            title: furniture.title,
          ),
        ),
      ),
    );
  }
}
