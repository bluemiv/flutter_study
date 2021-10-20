import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snakbar App",
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Snack Bar App"),
          centerTitle: true,
        ),
        body: Builder(builder: (BuildContext ctx) {
          return Center(
            // ignore: deprecated_member_use
            child: FlatButton(
              child: const Text(
                "Show me",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () => {
                Scaffold.of(ctx)
                    // ignore: deprecated_member_use
                    .showSnackBar(const SnackBar(content: Text("hello world")))
              },
            ),
          );
        }));
  }
}
