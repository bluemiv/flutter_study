import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug banner 제거
      title: "Drawer App", // app 검색시 이름
      home: HomePage(), // 첫 화면
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer App"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => {
              print("Click!")
            }
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {
              print("Search!")
            }
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer Header 구현
            UserAccountsDrawerHeader(
              accountName: const Text("아이유"),
              accountEmail: const Text("iu@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("assets/iu.jpg"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red[200],
                  backgroundImage: AssetImage("assets/iu.png"),
                ),
              ],
              onDetailsPressed: () => {
                print("Drawer clicked!")
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0)
                ),
              ),
            )

            // List Tile 구현
          ],
        ),
      ),
    );
  }
}
