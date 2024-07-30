import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Coxinha extends StatefulWidget {
  const Coxinha({super.key});

  @override
  State<Coxinha> createState() => _CoxinhaState();
}

class _CoxinhaState extends State<Coxinha> {
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
                            Image.asset('assets/images/amarela.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Coxinhas de Frango Pré'),
                        Text('Frito Lara 500g'),
                        SizedBox(height: 30),
                        Text(
                          'R\$19,49',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 156, 16, 16),
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 14),
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