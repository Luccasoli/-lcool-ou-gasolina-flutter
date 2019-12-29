import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Image.asset(
          'assets/images/aog-white.png',
          height: 90,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Álcool ou Gasolina',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        )
      ],
    );
  }
}
