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
    'Zomato',
    'Swiggy',
    'Bliss Kitchen',
    'Big Basket',
  ];
  // Int currentIndex initialization
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Restaurant Picker'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Which Restaurant should you go ??'),
            Column(
              children: [
                Text(
                  Restaurants[currentIndex],
                  style: TextStyle(fontSize: 20.90),
                )
              ],
            ),
            ElevatedButton(onPressed: (){}, child: Text('Resto Picker'))
          ],
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
