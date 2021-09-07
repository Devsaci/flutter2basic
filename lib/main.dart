import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      colorAppBar = Colors.yellow;
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
            body:
            Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                  child: FlatButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(30),
                    color: Colors.red,
                    child: Text(
                      "Text FlatButton",
                      style: TextStyle(fontSize: 35),
                    ),
                    splashColor: Colors.blue,
                    disabledColor: Colors.blueGrey,
                    highlightColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  str,
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
                SizedBox(height: 40),
                Container(
                  color: Colors.green,
                  alignment: Alignment.centerLeft,
                  child: RaisedButton(
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
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(

                onPressed: (){
              setState(() {
                colorAppBar= Colors.amber;
              });
            })
        ),
      );
}
