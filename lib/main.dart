import 'package:aog/widgets/Input.dart';
import 'package:aog/widgets/Logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: 'Big Shoulders Display'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasController = MoneyMaskedTextController();
  var _alcoolController = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Logo(),
              Input(
                label: 'Gasolina',
                controller: this._gasController,
              ),
              Input(
                label: 'Álcool',
                controller: this._alcoolController,
              ),
              Container(
                margin: EdgeInsets.all(30),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(30)),
                child: FlatButton(
                  child: Text(
                    'CALCULAR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
