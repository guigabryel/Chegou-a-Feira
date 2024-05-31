import 'package:chegou_a_feira/barra.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Página Principal',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Login(),
  );
  }
  }