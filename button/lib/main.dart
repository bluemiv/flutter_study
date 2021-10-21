import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Button App",
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
        title: const Text("Button App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text Button Example
            TextButton(
              onPressed: () {
                print("Clicked button");
              },
              onLongPress: () {
                print("Clicked long~~~~ button");
              },
              child:
                  const Text("Text button", style: TextStyle(fontSize: 20.0)),
              style: TextButton.styleFrom(primary: Colors.blue),
            ),

            // ElevatedButton
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0),
            ),

            // OutlinedButton
            OutlinedButton(
              onPressed: () {
                print("Clicked outlinedButton");
              },
              child: const Text("OutlinedButton"),
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.lightBlue,
                  side: const BorderSide(color: Colors.red, width: 5.0)),
            ),

            // Icon Button
            TextButton.icon(
              onPressed: () {
                print("Clicked Text Icon button");
              },
              icon: const Icon(Icons.thumb_up),
              label: const Text("Like"),
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.black),
            ),

            TextButton.icon(
              onPressed: null,
              icon: const Icon(Icons.thumb_up),
              label: const Text("Like"),
              style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  onSurface: Colors.pink),
            ),

            ButtonBar(
              buttonPadding: EdgeInsets.all(20.0),
              alignment: MainAxisAlignment.center,
              children: [
                // OutlinedButton
                OutlinedButton(
                  onPressed: () {
                    print("Clicked outlinedButton");
                  },
                  child: const Text("OutlinedButton"),
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.lightBlue,
                      side: const BorderSide(color: Colors.red, width: 5.0)),
                ),

                // Icon Button
                TextButton.icon(
                  onPressed: () {
                    print("Clicked Text Icon button");
                  },
                  icon: const Icon(Icons.thumb_up),
                  label: const Text("Like"),
                  style: TextButton.styleFrom(
                      primary: Colors.white, backgroundColor: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
