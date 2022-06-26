import 'package:flutter/material.dart';

class ListviewExample extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  ListviewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: numberList.map((item) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "$item",
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

/// [ListViewBuilderExample] -> contoh penerapan ListViewBuilder
/// [itemCount] -> digunakan untuk menentukan range
class ListViewBuilderExample extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  ListViewBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "${numberList[index]}",
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        itemCount: numberList.length,
      ),
    );
  }
}

/// [ListViewSeparatedExample] -> contoh penerapan list view separated
/// perlu implementasi atribut [itemBuilder], [separatorBuilder], [itemCount]
///
class ListViewSeparatedExample extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  ListViewSeparatedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  "${numberList[index]}",
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
          itemCount: numberList.length),
    );
  }
}
