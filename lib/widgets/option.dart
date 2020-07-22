import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final List<Map<String, Object>> options;
  final Function selectOption;

  Option(this.options, this.selectOption);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...(options).map((option) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: () =>
                  selectOption(option['incrementBy'], option['score']),
              child: Text(
                option['Text'],
                style: TextStyle(color: Colors.white),
              ),
              color:
                  option['Text'] == 'Yes' ? Colors.green[400] : Colors.red[400],
            ),
          );
        }).toList(),
      ],
    );
  }
}
