import 'package:flutter/material.dart';

class CreditsPage extends StatefulWidget {
  @override
  _CreditsPageState createState() => _CreditsPageState();
}

class _CreditsPageState extends State<CreditsPage> {
  Widget build(BuildContext context) {
    final trash = new Text(
        "Kangja",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48.0, fontFamily: 'Amatic SC')
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
            child: Padding(
              padding: EdgeInsets.all(130.0),
              child: Column (
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  trash
                ],
              ),
            ),
        ),
      ),
    );
  }
}