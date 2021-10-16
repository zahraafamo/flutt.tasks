import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            title: const Center(child: Text("Fooder")),
          ),
          body: Container(
              height: 600,
              width: 400,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/1.jpg"),
                  )),
              child: Stack(
                children: const [
                  Text("Editor's choice",
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                  Positioned(
                      top: 20,
                      child: Text("The Art of Dough",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)))
                ],
              ))),
    );
  }
}
