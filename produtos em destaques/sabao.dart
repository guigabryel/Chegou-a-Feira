import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';
import '../produtos/sabao1.dart';

class Sabao extends StatefulWidget {
  const Sabao({super.key});

  @override
  State<Sabao> createState() => _SabaoState();
}

class _SabaoState extends State<Sabao> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 423,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Sabao1()),
                                );
                              },
                              child: Image.asset('assets/images/sabao.png'),
                            ),
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
                        Text('Sabão Líquido Becker 3L'),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'R\$18,99',
                                textAlign: TextAlign.start,
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
                                        'R\$21,99',
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