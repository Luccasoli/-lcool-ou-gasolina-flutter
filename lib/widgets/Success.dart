import 'package:flutter/material.dart';

import 'LoadingButton.dart';

class Success extends StatelessWidget {
  String result = "";
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              this.result,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LoadingButton(
              text: 'CALCULAR NOVAMENTE',
              busy: false,
              invert: true,
              onPressed: this.reset,
            ),
          ],
        ));
  }
}
