import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    final placeHolder = Text(
      'game',
      //TO-DO: colors
      style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
    );
    final bar = Text(
        'bar',
      // To-DO: change text
    );
    final mainRow = Row(
      children: <Widget>[
        placeHolder,
      ],
    );
    final bottomBar = Row(
      children: <Widget>[
        bar
      ],
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.pink[100],
          child: Column (
            children: <Widget>[
              Expanded(
                flex: 8, // 90%
                child: SizedBox(
                  height: 600.0,
                  width: 700.0,
                  child: Image.asset(
                    // TO-DO: Change out logo
                    "assets/buns.gif",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                flex: 2, // 10% fill
                child: Container(color: Colors.deepOrange[100]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}