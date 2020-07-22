import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;

  Result(this.totalScore, this.reset);

  String endResult() {
    if (totalScore >= 8) {
      return 'You\'re hired';
    } else if (totalScore >= 5) {
      return 'You need to get some experience';
    } else {
      return 'Better luck next time';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(50),
          child: Text(
            endResult(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        RaisedButton(
          color: Colors.blue,
          child: Text(
            'Retry Interview',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: reset,
        ),
      ],
    );
  }
}
