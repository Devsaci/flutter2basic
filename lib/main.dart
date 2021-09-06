import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var str = "";

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
                  style: TextStyle(),
                ),
                RaisedButton(onPressed: (){
                  str = "Hello";
                })
              ],
            )),
      );
}
