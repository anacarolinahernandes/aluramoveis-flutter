import 'package:flutter/material.dart';
import 'package:aluramoveis/pages/cart.dart';
import 'package:aluramoveis/pages/details.dart';
import 'package:aluramoveis/widgets/custom_appbar.dart';
import 'package:aluramoveis/widgets/grid_products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/carrinho': (context) => Cart(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final List furnitures = [
    {
      "title": "Mesa",
      "price": 300,
      "image": "movel1.jpeg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Cadeira",
      "price": 120,
      "image": "movel2.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Manta",
      "price": 200,
      "image": "movel3.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Sofá Cinza",
      "price": 800,
      "image": "movel4.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Mesa de cabeceira",
      "price": 400,
      "image": "movel5.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Jogo de Cama",
      "price": 250,
      "image": "movel6.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Sofá Branco",
      "price": 900,
      "image": "movel7.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(title: 'Lojinha Alura'),
      body: GridProducts(
        furnitures: furnitures,
      ),
    );
  }
}
