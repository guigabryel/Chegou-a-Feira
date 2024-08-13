import 'package:flutter/material.dart';

import 'barra.dart';

class Barradoapp extends StatelessWidget {
  const Barradoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 176, 39, 69),
              iconTheme: IconThemeData(
                color: Colors.white
              ),
               actions: [
          login(),
          SizedBox(width: 18,),
          cadastro(),
          SizedBox(width: 10,),
        ]
        ),
    );
  }
}