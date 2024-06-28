import 'package:flutter/material.dart';

class PessoaJuridica extends StatefulWidget {
  @override
  State<PessoaJuridica> createState() => _PessoaJuridicaState();
}

class _PessoaJuridicaState extends State<PessoaJuridica> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Razão Social:',
              hintText: '',
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
              labelText: 'Nome para Contato:',
              hintText: 'Seu nome',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'CNPJ:',
              hintText: '00.000.000/0000-00',
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
              labelText: 'Inscrição Estadual:',
              hintText: '',
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
