import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {

  CustomTabBar({
    Key key
  }) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        labelColor: Colors.white70,
        tabs: [
          Text('Phone'),
          Text('Email'),
        ]
    );
  }
}
