import 'package:flutter/material.dart';

class Textfieldsenha extends StatefulWidget {
  const Textfieldsenha({super.key});

  @override
  State<Textfieldsenha> createState() => _TextfieldsenhaState();
}

class _TextfieldsenhaState extends State<Textfieldsenha> {
 final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Sua Nova Senha:',
            hintText: 'Sua Nova Senha:',
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('* ', style: TextStyle(color: Colors.black)),
          ),
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: _toggleVisibility,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor, insira a nova senha';
          }
          return null;
        },
      ),
    );
  }
}