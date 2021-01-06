import 'package:aluramoveis/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:aluramoveis/models/furniture.dart';
import 'package:aluramoveis/widgets/element_product.dart';

class ElementGridProducts extends StatefulWidget {
  final Furniture furniture;
  final Function update;

  const ElementGridProducts({this.furniture, this.update});

  @override
  _ElementGridProductsState createState() => _ElementGridProductsState();
}

class _ElementGridProductsState extends State<ElementGridProducts> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Details(
                    furniture: widget.furniture,
                  )),
        ).then((value) => widget.update());
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
            image: widget.furniture.image,
            title: widget.furniture.title,
          ),
        ),
      ),
    );
  }
}
