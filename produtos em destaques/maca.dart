import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Maca extends StatefulWidget {
  const Maca({super.key});
 
  @override
  State<Maca> createState() => _MacaState();
}

class _MacaState extends State<Maca> {
  @override
  Widget build(BuildContext context) {
    return           Container(
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
                            Image.asset('assets/images/maca.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Maçã Fuji 500g'),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'R\$8,85',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(255, 156, 16, 16),
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
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