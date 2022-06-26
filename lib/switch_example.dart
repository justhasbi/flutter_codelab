import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SwitchExample();
}

class _SwitchExample extends State<SwitchExample> {
  bool isLightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Example'),
      ),
      body: Switch(
        value: isLightOn,
        onChanged: (bool value) {
          setState(() {
            isLightOn = value;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(isLightOn ? 'Light on' : 'Light off'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
}