import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {

  DividerWithText({
    this.text,
    this.height = 50
  });

  final String text;
  final double height;
  final Color dividerColor = Colors.black12;
  final Color fontColor = Colors.black45;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 5.0, right: 25.0),
                child: Divider(
                  height: height,
                  color: dividerColor,
                )
            )
        ),
        Text(text,
          style: TextStyle(
            color: fontColor
          )
        ),
        Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 25.0, right: 5.0),
                child: Divider(
                  height: height,
                  color: dividerColor,
                )
            )
        )
      ],
    );
  }
}
