import 'package:flutter/material.dart'; 
import 'dart:math';

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
         backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Row and Column Widgets'), 
          backgroundColor: Colors.blue, 
        ), 
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    color: Colors.orange, 
                    width: 100.0, 
                    height: 100.0, 
                    
                    child: Center(child: Text('Container 1')), 

                   
                    
                  ),
                ),
              ), 
              Transform.rotate( 
                angle: pi/4, 
                child: Column(
                  children: [
                    Container(
                    color: Colors.white, 
                    height: 100.0, 
                    width:100.0, 
                    child: Center(child: Text('Container 2'))
              ),
                  ],
                ) 
              )

            ],
          ), 
          Column(
            children: [
              Expanded( 
                child: Padding( 
                  padding: EdgeInsets.all(10.0),
                  child: Container( 
                width: 100.0, 
                color: Colors.yellow, 


              ) 
                )
              ), 

              Expanded( 
                child: Padding( 
                  padding: EdgeInsets.all(10.0),
                  child: Container( 
                width: 100.0, 
                color: Colors.blue, 


              ) 
                )
              )

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