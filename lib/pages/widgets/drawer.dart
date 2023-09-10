import 'package:flutter/material.dart';
import 'package:flutter_routing_app/pages/widgets/drawer.header.dart';
import 'package:flutter_routing_app/pages/widgets/drawer.item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        const MyDrawerHeader(),
        MyDrawerItem(
            itemIcon: const Icon(Icons.home),
            onTapFunc: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/");
            },
            title: "Home"),
        Divider(
          color: Theme.of(context).primaryColor,
        ),
        MyDrawerItem(
            itemIcon: const Icon(Icons.countertops),
            onTapFunc: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/counter");
            },
            title: "Counter"),
        Divider(
          color: Theme.of(context).primaryColor,
        ),
        MyDrawerItem(
            itemIcon: const Icon(Icons.abc),
            onTapFunc: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/products");
            },
            title: "Products"),
      ]),
    );
  }
}
