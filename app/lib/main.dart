import 'package:challenge_design_system/challenge_design_system.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:fteam_challenge_1/app/app_module.dart';
import 'package:fteam_challenge_1/app/app_widget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
