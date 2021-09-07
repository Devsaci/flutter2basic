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

  void onPressedFunction() {
    setState(() {
      str = "Hello";
    });
  }

  void onLongPressFunction() {
    setState(() {
      str = "BayBay";
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppBar Text"),
                backgroundColor: Colors.black,
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
