import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'Input.dart';
import 'LoadingButton.dart';

class FormContainer extends StatelessWidget {
  final MoneyMaskedTextController gasController;
  final MoneyMaskedTextController alcoolController;
  final bool busy;
  final Function submitFunc;

  FormContainer({
    @required this.alcoolController,
    @required this.gasController,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Input(
          label: 'Gasolina',
          controller: this.gasController,
        ),
        Input(
          label: 'Álcool',
          controller: this.alcoolController,
        ),
        LoadingButton(
          text: 'CALCULAR',
          busy: this.busy,
          invert: false,
          onPressed: this.submitFunc,
        ),
      ],
    );
  }
}
