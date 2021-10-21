import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Log In"),
          centerTitle: true,
        ),
        body: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 50)),
                const Center(
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/iu.png"),
                      radius: 50),
                ),
                Form(
                  child: Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          inputDecorationTheme: const InputDecorationTheme(
                              labelStyle: TextStyle(
                                  color: Colors.teal, fontSize: 15.0))),
                      child: Container(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: const InputDecoration(
                                  labelText: "Enter email"),
                              keyboardType: TextInputType.emailAddress,
                              controller: controller,
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                  labelText: "Enter password"),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              controller: controller2,
                            ),
                            const Padding(padding: EdgeInsets.only(top: 30)),
                            ElevatedButton(
                              onPressed: () {
                                if (controller.text == "a" &&
                                    controller2.text == "123") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dice()));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                      "일치하지 않습니다.",
                                      textAlign: TextAlign.center,
                                    ),
                                    duration: Duration(seconds: 2),
                                  ));
                                }
                              },
                              child: const Text("Login"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.teal,
                                  fixedSize: const Size(300, 40)),
                            )
                          ],
                        ),
                      )),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Game"),
      ),
    );
  }
}
