import 'package:flutter/material.dart';
import 'home.dart';
import 'credits.dart';
void main() => runApp(StudyBunniesStartPage());

// Theme
class StudyBunniesStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Start Page UI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      home: StartPage(title: 'Study Bunnies Start Page'),
    );
  }
}

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _StartPageState createState() => _StartPageState();
}

// Display UI
class _StartPageState extends State<StartPage> {
  // TextStyle stuff here
  @override
  Widget build(BuildContext context) {
    final mainText = Text(
        'Study Bunnies',
        //TO-DO: colors
        style: TextStyle(color: Colors.deepOrange[300], fontSize: 48, fontFamily: 'VT323'),
    );
    final startButton = Material (
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0x3493675),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Text("START",
            textAlign: TextAlign.center,
            //TO-DO: text styling here
        ),
      ),
    );
    final settingsButton = Material (
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0x3493675),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("SETTINGS",
          textAlign: TextAlign.center,
          //TO-DO: text styling here
        ),
      ),
    );
    final creditsButton = Material (
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0x3493675),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreditsPage()),
          );
        },
        child: Text("DEVELOPERS",
          textAlign: TextAlign.center,
          //TO-DO: text styling here
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.deepOrange[100],
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                mainText,
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    height: 200.0,
                    child: Image.asset(
                      // TO-DO: Change out logo
                      "assets/pancake_bunny.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                startButton,
                settingsButton,
                creditsButton,
              ],
            ),
          ),
        ),
      ),
    );
  }

}
