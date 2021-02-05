import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomAppBar({
    Key key,
    this.title = '',
    this.titleColor = Colors.white,
    this.backButtonColor = Colors.white,
    this.bottomWidget
  }) : preferredSize = const Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize;

  final String title;
  final Color titleColor;
  final Color backButtonColor;
  final PreferredSizeWidget bottomWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
        style: TextStyle(
            color: titleColor
        ),
      ),
      leading: BackButton(
          color: backButtonColor
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      bottom: bottomWidget,
    );
  }
}
