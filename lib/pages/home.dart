import 'package:aog/widgets/FormContainer.dart';
import 'package:aog/widgets/Logo.dart';
import 'package:aog/widgets/Success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  var _gasController = MoneyMaskedTextController();
  var _alcoolController = MoneyMaskedTextController();
  bool _busy = false;
  bool _completed = false;
  String _resultText = 'exemplo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 1200),
        color: this._color,
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Logo(),
              this._completed
                  ? Success(
                      reset: this.calculateAgain,
                      result: this._resultText,
                    )
                  : FormContainer(
                      alcoolController: this._alcoolController,
                      gasController: this._gasController,
                      busy: this._busy,
                      submitFunc: this.calculate,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateAgain() {
    setState(() {
      this._completed = false;
      this._alcoolController = MoneyMaskedTextController();
      this._gasController = MoneyMaskedTextController();
      this._busy = false;
      this._color = Colors.deepPurple;
    });
  }

  Future calculate() {
    double alcool = double.parse(
            this._alcoolController.text.replaceAll(RegExp(r'[,.]'), '')) /
        100;
    double gas =
        double.parse(this._gasController.text.replaceAll(RegExp(r'[,.]'), '')) /
            100;

    double res = alcool / gas;

    this.setState(() {
      this._busy = true;
      this._completed = false;
      this._color = Colors.deepPurpleAccent;
    });

    return Future.delayed(Duration(seconds: 1), () {
      this.setState(() {
        if (res >= 0.7) {
          this._resultText = 'Compensa utilizar Gasolina!';
        } else {
          this._resultText = 'Compensa utilizar Álcool!';
        }

        this._busy = false;
        this._completed = true;
      });
    });
  }
}
