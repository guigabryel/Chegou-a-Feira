import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuantitySelector3 extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector3> {
int _counter = 1;

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
    return SizedBox(
      height: 50.0,
      child: Container(
        decoration: BoxDecoration(
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.remove,),
                onPressed: _decrementCounter,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '$_counter',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: _incrementCounter,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 0,),
            Container(
              height: 39.0,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                },
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
