import 'package:flutter/material.dart';
import 'package:flutter_routing_app/pages/product.details.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool details;
  const ProductItem({super.key, required this.product, required this.details});

  @override
  Widget build(BuildContext context) {
    print(product);
    return ListTile(
      title: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${product["name"]}"), // Check for null
                      Text("MAD ${product["prix"]}"), // Check for null
                      if (product?["promotion"] == true)
                        const Icon(
                          Icons.heart_broken,
                          size: 20,
                          color: Colors.red,
                        ),
                      Row(
                        children: [
                          for (int i = 1;
                              i <= (product?["stars"]);
                              i++) // Check for null
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // if (product != null && product["id"] != null) {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => ProductDetails(
                    //       productId: product["id"], // Check for null
                    //     ),
                    //   ),

                    // );
                    Navigator.pushNamed(context, "/productDetails",
                        arguments: product['id']);
                    // }
                  },
                  child: Image(
                    width: 200,
                    image: AssetImage(product?["image"]), // Check for null
                  ),
                ),
              ],
            ),
          ),
          if (details == true)
            Card(
              child: Text("${product?["description"]}"),
            )
        ],
      ),
    );
  }
}
