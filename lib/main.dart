import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int counter =0;
  void incrementCounter(){
    counter +=2;
  }
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Text"),
          ),
          body: Container(
            alignment: Alignment.center,
            color: Colors.amber,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Counter Textaddition"),
                  Text('$counter',style: Theme.of(context).textTheme.headline1,),

                ],
              ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: incrementCounter),


        ),
      );
}
