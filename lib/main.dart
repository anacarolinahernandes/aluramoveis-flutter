import 'package:flutter/material.dart';
import 'package:aluramoveis/furnitures.dart';
import 'package:aluramoveis/color_swatch.dart';
import 'package:aluramoveis/pages/cart.dart';
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
        fontFamily: 'Alata',
        primarySwatch: NewColorSwatch().lilac,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          headline3: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(title: 'Lojinha Alura'),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Produtos',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Flexible(
            child: GridProducts(
              furnitures: furnitures,
            ),
          ),
        ],
      ),
    );
  }
}
