import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var str = "BLABLA";
  var colorAppBar = Colors.black;

  void onPressedFunction() {
    setState(() {
      str = "Hello";
      colorAppBar=Colors.yellow;
    });
  }

  void onLongPressFunction() {
    setState(() {
      str = "BayBay";
      colorAppBar = Colors.black87;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppBar Text"),
              backgroundColor: colorAppBar,
            ),
            body: Column(
              children: <Widget>[
                Text(
                  str,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                SizedBox(height: 40),
                RaisedButton(
                  // onPressed: () => setState(() {str = "Hello";}),
                  onPressed: onPressedFunction,
                  // onLongPress: () => setState(() {str = "BayBay";}),
                  onLongPress: onLongPressFunction,
                  color: Colors.amber,
                  textColor: Colors.green,
                  splashColor: Colors.blue,
                  highlightColor: Colors.yellow,
                  padding: EdgeInsets.all(30),
                  child: Text(
                    "Text RaisedBotton",
                    style: TextStyle(fontSize: 35, color: Colors.red),
                  ),
                ),
              ],
            )),
      );
}
