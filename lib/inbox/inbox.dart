// ignore_for_file: prefer_const_constructors
import './appBar.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return TopNav();
  }
}
