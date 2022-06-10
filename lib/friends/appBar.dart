import 'package:flutter/material.dart';
import './friends.dart';

class FriendsNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0.0),
      padding: const EdgeInsets.all(0.0),
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.person_add_outlined,
              color: Colors.white,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            alignment: Alignment.centerLeft,
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          const Center(
            child: SizedBox(
              height: 35,
              width: 300,
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusColor: Colors.grey,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "Find friends",
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color.fromARGB(255, 50, 50, 50),
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            alignment: Alignment.centerRight,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
    );
  }
}
