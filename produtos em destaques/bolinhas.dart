import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Bolinhas extends StatefulWidget {
  const Bolinhas({super.key});

  @override 
  State<Bolinhas> createState() => _BolinhasState();
}

class _BolinhasState extends State<Bolinhas> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 424,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/vermelho.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Bolinhas de Diversas Pré'),
                        Text('Frito Lara (Carne, Frango,'),
                        Text('Queijo Pizza) 500g'),
                        SizedBox(height: 10),
                        Text(
                          'R\$24,99',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 156, 16, 16),
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 15),
                        Divider(color: Colors.black12),
                        Container(
                          width: double.infinity,
                          height: 100,
                          child: QuantitySelector(),
                        ),
                      ],
                    ),
                  );
  }
}