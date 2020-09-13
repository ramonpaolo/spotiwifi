import 'package:flutter/material.dart';

class Autor extends StatefulWidget {
  @override
  _AutorState createState() => _AutorState();
}

class _AutorState extends State<Autor> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Text(
          "data",
          style: TextStyle(color: Colors.white),
        )
      ],
    ));
  }
}
