import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Coentro extends StatefulWidget {
  const Coentro({super.key});

  @override
  State<Coentro> createState() => _CoentroState();
}

class _CoentroState extends State<Coentro> {
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
                            Image.asset('assets/images/coentro.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Coentro 1 Und'),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'R\$2,40',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(255, 156, 16, 16),
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
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