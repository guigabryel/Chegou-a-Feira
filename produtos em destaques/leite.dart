import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Leite extends StatefulWidget {
  const Leite({super.key});

  @override
  State<Leite> createState() => _LeiteState();
}

class _LeiteState extends State<Leite> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 403,
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
                            Image.asset('assets/images/leite.png'),
                            Positioned(
                              bottom: 10,
                              left: 0,
                              child: Container(
                                width: 78,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 41, 5, 70),
                                ),
                                child: Center(
                                  child: Text(
                                    'PROMOÇÃO',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Text('Leite Cemil Integral 1L'),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'R\$5,99',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 156, 16, 16),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 75,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 202, 24, 24),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'R\$7,99',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 9,
                                      child: Text(
                                        '__________',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
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