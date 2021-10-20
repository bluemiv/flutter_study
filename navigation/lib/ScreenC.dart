import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenC"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // ignore: deprecated_member_use
            RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go to ScreenA")),
          ],
        ),
      ),
    );
  }
}
