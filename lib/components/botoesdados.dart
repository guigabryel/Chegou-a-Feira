import 'package:flutter/material.dart';

class Botoesdados extends StatefulWidget {
  const Botoesdados({super.key});

  @override
  State<Botoesdados> createState() => _BotoesdadosState();
}

class _BotoesdadosState extends State<Botoesdados> {
 bool smsSelected = false;
  bool emailSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: smsSelected,
                  onChanged: (bool? value) {
                    setState(() {
                      smsSelected = value ?? false;
                    });
                  },
                ),
                Text('Quero receber por sms, ofertas incríveis.'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: emailSelected,
                  onChanged: (bool? value) {
                    setState(() {
                      emailSelected = value ?? false;
                    });
                  },
                ),
                Text('Quero receber por e-mail, ofertas incríveis.'),
              ],
            ),
          ],
        ),
      
    );
  }
}