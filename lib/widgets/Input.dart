import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  TextEditingController controller;
  String label;

  Input({@required this.controller, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            this.label,
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: TextFormField(
            controller: this.controller,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
