import 'package:pickome/widgets/constants/ThemeColor.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home_outlined,
              color: ThemeColor.Main2,
              size: 30.0,
            ),
            Icon(Icons.lightbulb_outline,
              color: ThemeColor.Main2,
              size: 30.0,
            ),
          ],
        ),
        SizedBox(
            height: 100.0,
            child: Text(
              'pickome',
              style: TextStyle(
                  fontSize: 55.0,
                  fontFamily: 'PoiretOne',
                  fontWeight: FontWeight.bold,
                  color: ThemeColor.BurnSienna
              ),
            )
          // child: Image.asset(
          //   "assets/logo.png",
          //   fit: BoxFit.contain,
          // ),
        ),
      ],
    );
  }
}
