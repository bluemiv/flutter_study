import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenB"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(onPressed: () {}, child: Text("Go to ScreenA")),
          ],
        ),
      ),
    );
  }
}
