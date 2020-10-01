import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Row and Column Widgets'),
          backgroundColor: Colors.blue,
        ),
        body: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Center(
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(color: Colors.black, width: 3),
                          ),
                          child: Center(child: Text('Container 1')),
                        ),
                      ),

                    Transform.rotate(
                      angle: pi / 4,
                      child: Column(
                        children: [
                          Container(
                              color: Colors.white,
                              height: 100.0,
                              width: 100.0,
                              child: Center(child: Text('Container 2'))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.yellow,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Container 3'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: 
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                        child: Container(
                          width: 100.0, 
                          color: Colors.blue,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('Container 4'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                    ),
                    Expanded(
                      child:
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: Center(
                            child: Text(
                              'Container 5',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        child: Container(
                            width: 100.0,
                            height: 100.0,
                            color: Colors.red,
                            child:
                                Text('Con 6', style: TextStyle(fontSize: 30))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
