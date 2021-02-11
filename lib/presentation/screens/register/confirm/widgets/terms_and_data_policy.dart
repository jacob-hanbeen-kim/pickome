import 'package:flutter/material.dart';
import 'package:pickome/presentation/screens/register/confirm/widgets/data_policy.dart';
import 'package:pickome/presentation/screens/register/confirm/widgets/terms.dart';

class TermsAndDataPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Terms(),
        const Text(
          'and',
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        DataPolicy()
      ],
    );
  }
}
