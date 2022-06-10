// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.person_add_outlined,
            color: Colors.black,
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.celebration_rounded,
            color: Colors.orange,
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        Container(
          margin: EdgeInsets.all(60),
          child: TextButton(
            onPressed: null,
            child: Text(
              'Profile',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.remove_red_eye_outlined,
            color: Colors.black,
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
      ],
    );
  }
}
