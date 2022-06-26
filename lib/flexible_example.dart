import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[ExpandedWidget(), FlexibleWidget()],
            ),
            Row(
              children: const <Widget>[ExpandedWidget(), ExpandedWidget()],
            ),
            Row(
              children: const <Widget>[FlexibleWidget(), FlexibleWidget()],
            ),
            Row(
              children: const <Widget>[FlexibleWidget(), ExpandedWidget()],
            )
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.teal, border: Border.all(color: Colors.white)),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Expanded",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.tealAccent, border: Border.all(color: Colors.white)),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Flexible",
            style: TextStyle(color: Colors.teal, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
