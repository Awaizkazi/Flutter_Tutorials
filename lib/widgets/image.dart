import 'package:flutter/material.dart';

class makeImg extends StatelessWidget {
  final String name;

  const makeImg({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(name);
  }
}