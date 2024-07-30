import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Banana extends StatefulWidget {
  const Banana({super.key});

  @override
  State<Banana> createState() => _BananaState();
}

class _BananaState extends State<Banana> {
  @override
  Widget build(BuildContext context) {
    return          Container(
                    height: 423,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/banana.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Banana Maçã 1Kg'),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'R\$9,60',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 156, 16, 16),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
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