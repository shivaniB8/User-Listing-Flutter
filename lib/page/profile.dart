import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text('Profile Screen',
              style: TextStyle(fontSize: 40, color: Colors.black)),
        ));
  }
}
