import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Favourite'), backgroundColor: Colors.green),
        body: Center(
          child: Text('Favourite Screen',
              style: TextStyle(fontSize: 40, color: Colors.black)),
        ));
  }
}
