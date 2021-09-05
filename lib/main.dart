import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('AppBar Zakaria'),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            children: <Widget>[
              Text('Rochambeau!', style: TextStyle(
                color: Colors.red,
                decoration: TextDecoration.underline,
                fontSize: 30,
                fontWeight: FontWeight.w200,
                shadows: <Shadow>[
                  Shadow(
                      color: Colors.black87,
                      offset: Offset(10, 8),
                      blurRadius: 3
                  )
                ],

              ),

              ),
              Text('Rochambeau!'),
              Text('Rochambeau!'),
              Text('Rochambeau!', style: TextStyle(
                  decoration: TextDecoration.combine(
                      [TextDecoration.underline, TextDecoration.overline]),
                  color: Colors.blue,
                  decorationColor: Colors.amber,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationThickness: 5,

              ),),

            ],
          )
      ),
    );
  }
}
