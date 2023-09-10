import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_routing_app/pages/product.item.dart';
import 'package:http/http.dart' as http;

class ProductDetails extends StatefulWidget {
  final int productId;
  const ProductDetails({Key? key, required this.productId}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  dynamic? productState = null;

  @override
  void initState() {
    super.initState();
    int id = widget.productId;
    print(id);
    print("http://192.168.1.2:9000/products/2");
    http
        .get(Uri.parse("http://192.168.1.2:9000/products/$id"))
        .then((response) => {
              setState(() {
                productState = json.decode(response.body);
              }),
            })
        .catchError((err) {
      print("***************** Err ********************");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (productState != null)
                ? ProductItem(
                    product: productState,
                    details: true,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
