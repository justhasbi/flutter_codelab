// Statefull Widget
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      SizedBox(height: 8.0),
                      Icon(Icons.calendar_today),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          'Open Everyday',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      SizedBox(height: 8.0),
                      Icon(Icons.schedule),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          '09:00 - 20:00',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      SizedBox(height: 8.0),
                      Icon(Icons.paid),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          'Rp 25.000',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                """Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.""",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            // Row(
            //   children: <Widget>[
            //     ElevatedButton(onPressed: () {}, child: const Text("Tombol")),
            //     TextButton(onPressed: () {}, child: const Text("Text Button")),
            //     OutlinedButton(
            //         onPressed: () {}, child: const Text("Outlined Button")),
            //     IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.volume_up),
            //         tooltip: 'Increase Volume By 10'),
            //   ],
            // ),
            // Row(
            //   children: const <Widget>[DropdownExample()],
            // )
          ],
        ),
      ),
    );
  }
}

class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DropdownExampleState();
}

// State widget
class _DropdownExampleState extends State<DropdownExample> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: const <DropdownMenuItem<String>>[
        DropdownMenuItem<String>(
          value: 'Dart',
          child: Text('Dart'),
        ),
        DropdownMenuItem<String>(
          value: 'Kotlin',
          child: Text('Kotlin'),
        ),
        DropdownMenuItem<String>(
          value: 'Java',
          child: Text('Java'),
        ),
        DropdownMenuItem<String>(
          value: 'Python',
          child: Text('Python'),
        ),
      ],
      onChanged: (String? value) {
        setState(() {
          language = value;
        });
      },
      value: language,
      hint: const Text('Select Language'),
    );
  }
}
