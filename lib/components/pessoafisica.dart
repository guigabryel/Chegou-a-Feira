import 'package:flutter/material.dart';

class PessoaFisica extends StatefulWidget {
  @override
  State<PessoaFisica> createState() => _PessoaFisicaState();
}

class _PessoaFisicaState extends State<PessoaFisica> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome completo:',
              hintText: 'Nome completo',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('* ', style: TextStyle(color: Colors.black)),
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'E-mail:',
              hintText: 'Email@gmail.com',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'CPF:',
              hintText: '000.000.000-00',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('* ', style: TextStyle(color: Colors.black)),
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Data de nascimento:',
              hintText: '01/01/1990',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('* ', style: TextStyle(color: Colors.black)),
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Celular:',
              hintText: '(00) 00000-0000',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('* ', style: TextStyle(color: Colors.black)),
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Telefone:',
              hintText: '(00) 0000-0000',
            ),
          ),
        ],
      ),
    );
  }
}