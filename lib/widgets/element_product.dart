import 'package:flutter/material.dart';

class ElementProduct extends StatelessWidget {
  final String image;
  final String title;

  const ElementProduct({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Photo(
          image: image,
        ),
        Gradient(),
        Title(
          title: title,
        )
      ],
    );
  }
}

class Photo extends StatelessWidget {
  final String image;

  const Photo({this.image});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        image: AssetImage('utils/assets/images/$image'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class Gradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Theme.of(context).primaryColor,
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String title;

  Title({this.title});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
