import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Barra de Pesquisa em Flutter'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SearchBar(),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: 'Digite o que está procurando',
        hintStyle: TextStyle(color: Colors.grey), // Cor do texto do hint em branco
        border: OutlineInputBorder(
          // BorderRadius: BorderRadius.circular(10.0), // Removido para cantos quadrados
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 46, 45, 45), // Cor de fundo preto
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento interno
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: .0,right: .0), // Espaçamento à esquerda do ícone
          child: Container(
            decoration: BoxDecoration(
              color:Color.fromARGB(255, 110, 66, 146),

              
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.white), // Ícone de pesquisa com a cor branca
            ),
          ),
        ),
      ),
      onChanged: (value) {
        // Aqui você pode adicionar a lógica para pesquisar conforme o usuário digita
        print('Pesquisando por: $value');
      },
      style: TextStyle(color: Colors.white), // Cor do texto branco
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
