import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_front_ends/injection_container.dart';
import 'app_module.dart';
import 'app_widget.dart';

void main() {
  setupLocator();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
