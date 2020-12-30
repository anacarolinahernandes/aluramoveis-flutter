import 'package:flutter/material.dart';
import 'package:aluramoveis/pages/cart.dart';
import 'package:aluramoveis/pages/details.dart';
import 'package:aluramoveis/widgets/custom_appbar.dart';

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
  final List furniture = [
    [
      {
        "titulo": "Mesa",
        "preco": 300,
        "foto": "movel1.jpeg",
        "descricao":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
      },
      {
        "titulo": "Cadeira",
        "preco": 120,
        "foto": "movel2.jpg",
        "descricao":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
      },
      {
        "titulo": "Manta",
        "preco": 200,
        "foto": "movel3.jpg",
        "descricao":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
      },
      {
        "titulo": "Sofá Cinza",
        "preco": 800,
        "foto": "movel4.jpg",
        "descricao":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
      },
      {
        "titulo": "Mesa de cabeceira",
        "preco": 400,
        "foto": "movel5.jpg",
        "descricao":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
      },
      {
        "titulo": "Jogo de Cama",
        "preco": 250,
        "foto": "movel6.jpg",
        "descricao":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
      },
      {
        "titulo": "Sofá Branco",
        "preco": 900,
        "foto": "movel7.jpg",
        "descricao":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
      }
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(title: 'Lojinha Alura'),
      body: FlatButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(),
          ),
        ),
        child: Text('Vamos para os detalhes!'),
      ),
    );
  }
}
