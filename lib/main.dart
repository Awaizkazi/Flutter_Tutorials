import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Resto());
}

class Resto extends StatefulWidget {
  const Resto({Key? key}) : super(key: key);

  @override
  _RestoState createState() => _RestoState();
}

class _RestoState extends State<Resto> {
  List<String> Restaurants = [
    'Swiggy',
    'Zomato',
    'Bliss Kitxhen',
    'Grofers',
    'Micheals Kitchen'
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Restaurant Picker'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Which Restaurant Should you Go ??',
                  ),
                  Text(
                    Restaurants[currentIndex],
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => _changeState(),
                child: Text('Resto Picker'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _changeState() {
    final index = Random().nextInt(Restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
