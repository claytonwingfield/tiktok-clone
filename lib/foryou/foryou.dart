// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ForYou extends StatefulWidget {
  ForYou({Key? key}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          'For You',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
