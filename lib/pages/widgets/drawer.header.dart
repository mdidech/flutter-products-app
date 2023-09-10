import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Theme.of(context).primaryColor])),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpg"),
            radius: 50,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpg"),
            radius: 25,
          ),
        ],
      ),
    );
  }
}
