import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_routing_app/pages/product.item.dart';
import 'package:http/http.dart' as http;

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    super.initState();
    http
        .get(Uri.parse("http://192.168.1.2:9000/products"))
        .then((response) => {
              setState(() {
                products = json.decode(response.body);
              })
            })
        .catchError((err) {
      print("***************** Err ********************");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('products'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ProductItem(product: products[index], details: false);
        },
        itemCount: products.length,
      ),
    );
  }
}
