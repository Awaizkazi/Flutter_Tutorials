import 'dart:math';
import 'Sample.dart';
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

List<String> Restaurants = [
  'Swiggy',
  'Zomato',
  'Micheals Kitchen',
  'Lester Kitchen',
];

int currentIndex = 0;

class _RestoState extends State<Resto> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Which Restautrant Should you G0 ?'),
              Text(
                Restaurants[currentIndex],
                style: TextStyle(fontSize: 20.9),
              ),
              ElevatedButton(
                onPressed: () => _changeState(),
                child: Text('Resto Picker'),
              ),
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
