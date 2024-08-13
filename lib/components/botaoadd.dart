import 'package:flutter/material.dart';

class Botaoadd extends StatefulWidget {
  const Botaoadd({super.key});

  @override
  State<Botaoadd> createState() => _BotaoaddState();
}

class _BotaoaddState extends State<Botaoadd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
             padding: const EdgeInsets.only(top: 10),
             child: SizedBox(
               width: MediaQuery.of(context).size.width -300,
               child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   backgroundColor: Color.fromARGB(255, 176, 39, 69),
                   padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 1.0),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0),
                   ),
                 ),
                 onPressed: () {
                   
                 },
                 child: Text(
                   'Adicionar',
                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                 ),
               ),
             ),
           );
  }
}