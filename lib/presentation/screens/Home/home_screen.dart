import 'package:flutter/material.dart';
import 'package:pickome/presentation/screens/home/widgets/home.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return const Home(email: 'username');
  }
}
