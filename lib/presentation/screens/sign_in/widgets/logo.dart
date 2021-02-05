import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 100,
          child: Image.asset(
            "assets/images/log2.png",
            fit: BoxFit.contain,
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Icon(Icons.home_outlined,
        //       color: ThemeColor.Main2,
        //       size: 30.0,
        //     ),
        //     Icon(Icons.lightbulb_outline,
        //       color: ThemeColor.Main2,
        //       size: 30.0,
        //     ),
        //   ],
        // ),
        SizedBox(
            child: Text(
          'pickome',
          style: Theme.of(context).textTheme.headline1,
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
