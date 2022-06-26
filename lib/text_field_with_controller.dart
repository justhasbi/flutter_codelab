import 'package:flutter/material.dart';

class TextFieldWithController extends StatefulWidget {
  const TextFieldWithController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFieldWithController();
}

class _TextFieldWithController extends State<TextFieldWithController> {
  // String _name = '';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: "Write your name here...",
              labelText: "Your name",
            ),
            // onChanged: (String value) {
            //   setState(() {
            //     _name = value;
            //   });
            // },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, ${_controller.text}'),
                      );
                    });
              },
              child: const Text('Submit'))
        ]),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}