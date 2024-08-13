import 'package:chegou_a_feira/abas%20do%20perfil/alertas.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/cupons.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/dados.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/endereco.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/favoritos.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/historico.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/senha.dart';
import 'package:chegou_a_feira/components/barra.dart';
import 'package:chegou_a_feira/components/abainicial.dart';
import 'package:chegou_a_feira/components/barradoapp.dart';
import 'package:chegou_a_feira/components/barralateral.dart';
import 'package:chegou_a_feira/components/fim.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'package:chegou_a_feira/abas%20do%20perfil/prateleira.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Conta extends StatefulWidget {
  const Conta({super.key});

  @override
  State<Conta> createState() => _ContaState();
}

class _ContaState extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 176, 39, 69),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          login(),
          SizedBox(width: 18),
          cadastro(),
          SizedBox(width: 10),
        ],
      ),
      drawer: Barralateral(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Abainicial(),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Perfil',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 15),
                  Image.asset('assets/images/avatar.png'),
                  SizedBox(height: 5),
                  Text(
                    'Nome do Cliente',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text('E-mail do Cliente'),
                  SizedBox(height: 10),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Prateleira()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/estrela.png', width: 60),
                            SizedBox(height: 5),
                            Text('Minha Prateleira'),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Favoritos()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/coracao.png', width: 60),
                            SizedBox(height: 5),
                            Text('Meus Favoritos'),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Alertas()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/sino.png', width: 60),
                            SizedBox(height: 5),
                            Text('Meus Alertas'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Color.fromARGB(31, 114, 113, 113),
              padding: EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.notifications_active, color: Colors.grey),
                      title: Text('Ativar Notificações'),
                      onTap: () {},
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: Icon(Icons.shopping_cart, color: Colors.grey),
                      title: Text('Histórico de pedidos'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Historico()),
                        );
                      },
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.ticket, color: Colors.grey),
                      title: Text('Cupons'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Cupons()),
                        );
                      },
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.fileEdit, color: Colors.grey),
                      title: Text('Dados de Cadastro'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Dados()),
                        );
                      },
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.mapLocationDot, color: Colors.grey),
                      title: Text('Gerenciar endereços'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Endereco()),
                        );
                      },
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.asterisk, color: Colors.grey),
                      title: Text('Trocar sua senha'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Senha()),
                        );
                      },
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.signOutAlt, color: Colors.grey),
                      title: Text('Sair'),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Destaques()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Fim(),
          ],
        ),
      ),
    );
  }
}
