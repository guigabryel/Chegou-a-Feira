import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Beterraba extends StatefulWidget {
  const Beterraba({super.key});

  @override
  State<Beterraba> createState() => _BeterrabaState();
}

class _BeterrabaState extends State<Beterraba> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 404,
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
                            Image.asset('assets/images/beterraba.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Beterraba 500g'),
                        SizedBox(height: 30),
                        Text(
                          'R\$7,99',
                          style: TextStyle(
                            color: Color.fromARGB(255, 156, 16, 16),
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 14),
                        Divider(color: Colors.black12),
                        Expanded(
                          child: QuantitySelector(),
                        ),
                      ],
                    ),
                  );
  }
}