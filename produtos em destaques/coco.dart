import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Coco extends StatefulWidget {
  const Coco({super.key});

  @override
  State<Coco> createState() => _CocoState();
}

class _CocoState extends State<Coco> {
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
                            Image.asset('assets/images/coco.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Text('Coco Seco 1 Und'),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'R\$2,99',
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