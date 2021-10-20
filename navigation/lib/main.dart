import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Navigation",
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        centerTitle: true,
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          child: const Text("Go to second page"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context2) => const SecondPage(),
                ));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          child: const Text("Go to first page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
