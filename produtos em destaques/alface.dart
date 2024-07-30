import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Alface extends StatefulWidget {
  const Alface({super.key});
 
  @override
  State<Alface> createState() => _AlfaceState();
}

class _AlfaceState extends State<Alface> {
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
                            Image.asset('assets/images/alface.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Alface 1 Und'),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'R\$4,79',
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