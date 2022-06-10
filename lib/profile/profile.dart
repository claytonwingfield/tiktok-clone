// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgetpractice/inbox/appBar.dart';
import 'package:widgetpractice/profile/appBar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: ProfileNav(),
      ),
    );
  }
}
