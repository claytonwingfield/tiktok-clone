// ignore_for_file: prefer_const_constructors
import './appBar.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  Friends({Key? key}) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: FriendsNav(),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
