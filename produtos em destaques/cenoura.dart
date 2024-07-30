import 'package:flutter/material.dart';

import '../components/botaodestaques.dart';

class Cenoura extends StatefulWidget {
  const Cenoura({super.key});
 
  @override
  State<Cenoura> createState() => _CenouraState();
}

class _CenouraState extends State<Cenoura> {
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
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Image.asset('assets/images/cenoura.png'),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Cenoura 500g'),
                        SizedBox(height: 30),
                        Text(
                          'R\$5,20',
                          style: TextStyle(
                            color: Color.fromARGB(255, 156, 16, 16),
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 15),
                        Divider(color: Colors.black12),
                        Expanded(
                          child: QuantitySelector(),
                        ),
                      ],
                    ),
                  );
  }
}