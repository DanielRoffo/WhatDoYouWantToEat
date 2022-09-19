import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    'McDonald\'s',
    'Mostaza',
    'Burger King',
    'La Farola',
    'Mi matutte'
  ];

  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('What do you want to eat?'),

              if (currentIndex != null)
                Text(
                  restaurants[currentIndex as int],
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              TextButton(
                onPressed: () {
                  updateIndex();
                },
                child: Text('Pick Restaurant'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.purple, primary: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  void updateIndex(){
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
