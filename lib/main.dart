import 'package:chegou_a_feira/abas%20do%20perfil/dados.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/historico.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/senha.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:chegou_a_feira/produtos/sabao1.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'package:chegou_a_feira/teste.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Destaques(),
  );
 }
}