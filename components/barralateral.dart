import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../destaques.dart';
import '../minhaconta.dart';

class Barralateral extends StatefulWidget {
  const Barralateral({super.key});

  @override
  State<Barralateral> createState() => _BarralateralState();
}

class _BarralateralState extends State<Barralateral> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
child: ListView(
  padding: EdgeInsets.zero,
  children: <Widget>[
    DrawerHeader(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 176, 39, 69),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Text('perfil', style: TextStyle(fontSize: 15),),
    radius: 30,
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
              ),
              Text(
                'Nome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text(
                'E-mail',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    
    ListTile(
      minTileHeight: 30,
      leading: Icon(Icons.person, color: Colors.blue,),
      title: Text('Minha Conta'),
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Conta()),
        );
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: Icon(Icons.star, color: Colors.purple,),
      title: Text('DESTAQUES'),
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Destaques()),
        );
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: Icon(Icons.local_bar, color: Colors.black,),
      title: Text('BEBIDAS'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: Icon(Icons.cookie, color: Color.fromARGB(255, 116, 58, 37),),
      title: Text('BEBIDAS E CHOCOLATES'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: FaIcon(FontAwesomeIcons.cheese, color: Color.fromARGB(255, 197, 191, 131),),
      title: Text('FRIO E LATICÍNIOS'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: FaIcon(FontAwesomeIcons.soap, color: Colors.blue,),
      title: Text('HIGIENE E BELEZA'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: FaIcon(FontAwesomeIcons.appleAlt, color: Color.fromARGB(255, 17, 88, 19),),
      title: Text('HOTIFRUTI'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: FaIcon(FontAwesomeIcons.sprayCan, color: Colors.lightBlue,),
      title: Text('LIMPEZA'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: FaIcon(FontAwesomeIcons.shoppingBasket, color: Colors.green,),
      title: Text('MERCEARIA'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: FaIcon(FontAwesomeIcons.breadSlice, color: const Color.fromARGB(255, 187, 109, 80),),
      title: Text('PADARIA'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(),
    ),
    ListTile(
      minTileHeight: 30,
      leading: FaIcon(FontAwesomeIcons.paw, color: Colors.brown,),
      title: Text('UTILIDADES E PETSHOP'),
      onTap: () {
        Navigator.pop(context);
      },
    ),
  ],
),    );
  }
}