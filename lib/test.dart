import 'package:flutter/material.dart';
import 'cards/card1.dart';
import 'cards/card2.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int selectedi = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: 'card1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: 'card2'),
          ],
          onTap: (int i) {
            setState(() {
              selectedi = i;
              // ignore: avoid_print
            });
            print(selectedi);
          },
          currentIndex: selectedi,
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
