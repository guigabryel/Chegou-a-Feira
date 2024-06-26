import 'package:chegou_a_feira/cadastro.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio(Login login, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 176, 39, 69),
        leading: IconButton(
          onPressed: () {
          }, 
          icon: Icon(Icons.menu, color: Colors.white,)
          ),
          actions: [
            login(),
            SizedBox(width: 18,),
            cadastro(),
            SizedBox(width: 10,),

          ],
        ),
      ),
    );
  }
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login(),
          ),
        );
      },
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.white, // Cor do link
        ),
      ),
    );
  }
}
class minhaconta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Conta(),
          ),
        );
      },
      child: Text(
        'Minha Conta',
        style: TextStyle(
          color: Colors.white, // Cor do link
        ),
      ),
    );
  }
}
class cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Cadastro(),
          ),
        );
      },
      child: Text(
        'Cadastre-se',
        style: TextStyle(
          color: Colors.white, // Cor do link
        ),
      ),
    );
  }
}

