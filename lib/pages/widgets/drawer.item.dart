// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyDrawerItem extends StatelessWidget {
  String title;
  Icon itemIcon;
  Function onTapFunc;
  MyDrawerItem(
      {required this.itemIcon,
      required this.onTapFunc,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: itemIcon,
      trailing: const Icon(
        Icons.arrow_forward_ios_sharp,
      ),
      onTap: () => onTapFunc(),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
