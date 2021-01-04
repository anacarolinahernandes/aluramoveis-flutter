import 'package:flutter/material.dart';
import 'package:aluramoveis/pages/home.dart';
import 'package:aluramoveis/pages/cart.dart';
import 'package:aluramoveis/color_swatch.dart';

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
      title: 'Alura Móveis',
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
