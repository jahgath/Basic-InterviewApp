import 'package:flutter/material.dart';

import '../widgets/option.dart';
import '../widgets/question.dart';
import '../widgets/result.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _questionIndex = 0;
  var _totalscore = 0;

  void _changeIndex(int increment, int score) {
    setState(() {
      _questionIndex = _questionIndex + increment;
      _totalscore = _totalscore + score;
    });
  }

  void _resetInterview() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  var _questions = [
    {
      'questionText': 'Are you a college graduate ?',
      'optionText': [
        {'Text': 'Yes', 'incrementBy': 1, 'score': 5},
        {'Text': 'No', 'incrementBy': 2, 'score': 0},
      ],
    },
    {
      'questionText': 'Any past work experience ?',
      'optionText': [
        {'Text': 'Yes', 'incrementBy': 3, 'score': 10},
        {'Text': 'No', 'incrementBy': 1, 'score': 0},
      ]
    },
    {
      'questionText': 'Any past internships ?',
      'optionText': [
        {'Text': 'Yes', 'incrementBy': 2, 'score': 8},
        {'Text': 'No', 'incrementBy': 1, 'score': 0},
      ]
    },
    {
      'questionText': 'Are you good with Flutter ?',
      'optionText': [
        {'Text': 'Yes', 'incrementBy': 1, 'score': 5},
        {'Text': 'No', 'incrementBy': 2, 'score': 0},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interview App'),
        centerTitle: true,
      ),
      body: Center(
        child: _questionIndex < 4
            ? Column(
                children: [
                  Question(_questions[_questionIndex]['questionText']),
                  Option(
                    _questions[_questionIndex]['optionText'],
                    _changeIndex,
                  ),
                ],
              )
            : Result(_totalscore, _resetInterview),
      ),
    );
  }
}
