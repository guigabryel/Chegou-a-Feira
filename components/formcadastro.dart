import 'package:flutter/material.dart';

import 'pessoafisica.dart';
import 'pessoajuridica.dart';

class Formcadastro extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Formcadastro> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              child: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'Pessoa Física'),
                  Tab(text: 'Pessoa Jurídica'),
                ],
                indicatorColor: Colors.red,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
              ),
            ),
      Expanded(
        child: TabBarView(
          controller: _tabController,
          children: [
            PessoaFisica(),
            PessoaJuridica(),
       ],
      ),
     ), 
    ],
   ),
  );
 }
}



