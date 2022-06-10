// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Inbox",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.message_outlined,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
