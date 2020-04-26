import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Preety likable";
    } else if (resultScore <= 12) {
      resultText = "You are ...  strange?";
    } else {
      resultText = "You are ...  Bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text(resultPhrase,
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center),
                FlatButton(onPressed: resetHandler, child: Text('Restart quiz'))
          ],
        ));
  }
}
