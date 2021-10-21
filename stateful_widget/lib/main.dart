import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "Statefule Widget",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Statefule Widget"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("click floating button"),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "$counter",
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      // setState를 통해서 값을 업데이트 할 수 있음
                      setState(() {
                        print(counter);
                        counter++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        print(counter);
                        counter--;
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
