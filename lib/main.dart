// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_routing_app/pages/counter.dart';
import 'package:flutter_routing_app/pages/home.dart';
import 'package:flutter_routing_app/pages/product.details.dart';
import 'package:flutter_routing_app/pages/products.dart';
import 'package:flutter_routing_app/pages/themes/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/counter': (context) => CounterPage(),
        '/products': (context) => ProductsPage(),
        '/productDetails': (context) => ProductDetails(
              productId: ModalRoute.of(context)!.settings.arguments as int,
            ),
      },
      theme: MyAppTheme.themes[0],
    );
  }
}
