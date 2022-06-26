import 'package:flutter/material.dart';

/// Penjelasan [Expanded]
/// nilai [flex] default widget [Expanded] adalah 1

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.indigo,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
