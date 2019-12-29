import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  bool busy = false;
  bool invert = false;
  Function onPressed;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.onPressed,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return this.busy
        ? Container(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
            alignment: Alignment.center,
            height: 50,
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: this.invert
                    ? Theme.of(context).primaryColor
                    : Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(30)),
            child: FlatButton(
              child: Text(
                this.text,
                style: TextStyle(
                  fontSize: 25,
                  color: this.invert
                      ? Colors.white
                      : Theme.of(context).primaryColor,
                ),
              ),
              onPressed: this.onPressed,
            ),
          );
  }
}
