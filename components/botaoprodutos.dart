import 'package:flutter/material.dart';

class QuantitySelector2 extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector2> {
int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(Icons.remove),
              onPressed: _decrementCounter,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: _incrementCounter,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 20,),
          Container(
            height: 48.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
              },
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}