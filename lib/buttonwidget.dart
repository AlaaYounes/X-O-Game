import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String symbol;
  Function onButtonClick;
  int index;

  ButtonWidget(
      {required this.symbol, required this.index, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 300,
        child: ElevatedButton(
          onPressed: () => onButtonClick(index),
          child: Text(
            symbol,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
