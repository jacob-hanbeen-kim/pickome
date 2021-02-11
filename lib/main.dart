import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pickome/injection.dart';
import 'package:pickome/presentation/screens/core/app_widget.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(AppWidget());
}

//flutter pub run build_runner watch --delete-conflicting-outputs
