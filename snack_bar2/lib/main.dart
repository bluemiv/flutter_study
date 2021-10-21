import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snack Bar App2",
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
        title: const Text("Snack Bar App2"),
        centerTitle: true,
      ),
      body: const MySnackBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text("Like a new Snack bar!"),
            duration: const Duration(seconds: 3),
            action: SnackBarAction(
              label: "Undo",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThridPage()));
              },
            ),
          ));
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: const Text("Go to the second page"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SecondPage()));
      },
    ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Builder(builder: (context) {
        return Center(
          child: Column(children: [
            const Text("Canceled like.",
                style: TextStyle(fontSize: 16.0, color: Colors.red)),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("좋아요가 취소되었습니다.")));
                },
                child: const Text("Cancel"))
          ]),
        );
      }),
    ));
  }
}

class ThridPage extends StatelessWidget {
  const ThridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thrid Page"),
      ),
      body: const Center(
        child: Text(
          "3번째 페이지",
          style: TextStyle(fontSize: 16.0, color: Colors.red),
        ),
      ),
    );
  }
}
