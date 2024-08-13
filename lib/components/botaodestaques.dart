import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    }
  );
}

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    }
  );
}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: _decrementCounter,
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              iconSize: 24.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _incrementCounter,
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              iconSize: 24.0,
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue, 
            fixedSize: Size(130, 30),
            shape: RoundedRectangleBorder(),
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
          ),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
