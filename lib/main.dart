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

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppBar Text"),
            ),
            body: Column(
              children: <Widget>[
                Text(
                  str,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                RaisedButton(onPressed: () {
                  setState(() {
                    str = "Hello";
                  });
                },
                child: ,
                ),
              ],
            )),
      );
}
