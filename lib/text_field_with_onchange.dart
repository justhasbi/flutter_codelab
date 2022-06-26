import 'package:flutter/material.dart';

class TextFieldWithOnchange extends StatefulWidget {
  const TextFieldWithOnchange({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFieldWithOnchange();
}

class _TextFieldWithOnchange extends State<TextFieldWithOnchange> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            decoration: const InputDecoration(
              hintText: "Write your name here...",
              labelText: "Your name",
            ),
            onChanged: (String value) {
              setState(() {
                _name = value;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, $_name'),
                      );
                    });
              },
              child: const Text('Submit'))
        ]),
      ),
    );
  }
}
