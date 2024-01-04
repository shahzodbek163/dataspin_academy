import 'package:dataspin_academy/app.dart';
import 'package:dataspin_academy/controller/service/init/init.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}
  