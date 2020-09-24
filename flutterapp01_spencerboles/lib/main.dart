import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget
{
  @override 
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column Widgets'), 
          backgroundColor: Colors.blue, 
        ), 
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: <Widget>[
              Container(
                color: Colors.orange, 
                width: 100.0, 
                height: 100.0, 
                
              )

            ],
          ), 
          Column(
            children: [


            ],
          ), 
          Column(
            children: [


            ],
          ),
        ],
      ), 
      ),
    );
  }
}