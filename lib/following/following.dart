// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Following extends StatefulWidget {
  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          'Following',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
