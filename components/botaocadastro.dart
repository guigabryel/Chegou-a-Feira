import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  String _selectedOption = 'Não';

  void _handleRadioValueChange(String? value) {
    setState(() {
      if (value != null) {
        _selectedOption = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 240),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Radio<String>(
                value: 'Sim',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              Text('Sim'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'Não',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              Text('Não'),
            ],
          ),
        ],
      ),
    );
  }
}