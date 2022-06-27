import 'package:flutter/material.dart';

/// [Navigator] digunakan untuk berpindah dari satu screen satu ke lainnya
/// Konsep navigasi dalam flutter yaitu ketika berpindah screen/activity
/// maka akan menjadi tumpukan (stack) ketika berpindah dari satu screen ke screen lain (push),
/// maka screen pertama akan ditumpuk oleh screen kedua.
/// Kemudian apabila kembali dari screen kedua ke pertama, maka screen kedua akan dihapus (pop).

/// Untuk berpindah menggunakan [Navigator.push(context, route)]
/// untuk kembali menggunakan [Navigator.pop(context)]
///
/// untuk mengirimkan data ketika berpindah page kita perlu mengirimkannya
/// sebagai parameter dari constructor class secondscreen

class NavigationExample extends StatelessWidget {
  const NavigationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final String message = "Hello from first screen";
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Change Screen"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return SecondScreen(message: message);
              }),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String message;
  const SecondScreen({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
      body: Center(
        child: OutlinedButton(
          child: const Text("Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
