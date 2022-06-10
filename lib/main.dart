// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:widgetpractice/foryou/foryou.dart';
import 'package:widgetpractice/friends/friends.dart';
import 'package:widgetpractice/inbox/inbox.dart';
import 'package:widgetpractice/post/post.dart';
import 'package:widgetpractice/profile/profile.dart';
import './foryou/foryou.dart';
import './following/following.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myIndex = 0;
  int myNavIndex = 0;
  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  static List<Widget> widgetOptions = <Widget>[
    ForYou(),
    Friends(),
    Post(),
    Inbox(),
    Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      myIndex = index;
    });
  }

  void onFollowTapped(int index) {
    setState(() {
      myNavIndex = myNavIndex;
    });
  }

  final _controller = PageController();
  bool _shouldAnimate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myIndex == 0
          ? AppBar(
              backgroundColor: Colors.black,
              flexibleSpace: SafeArea(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.black, // set your color
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          if (_shouldAnimate) {
                            // animates to page1 with animation
                            _controller.animateToPage(0,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeOut);
                          } else {
                            // jump to page1 without animation
                            _controller.jumpToPage(1);
                          }
                        },
                        child: Text(
                          'Following',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (_shouldAnimate) {
                            // animates to page1 with animation
                            _controller.animateToPage(1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          } else {
                            // jump to page1 without animation
                            _controller.jumpToPage(1);
                          }
                        },
                        child: Text(
                          'For You',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      // ignore: prefer_const_literals_to_create_immutables

                      // set your search bar setting
                    ],
                  ),
                ),
              ),
            )
          : null,
      body: myIndex == 0
          ? PageView(
              controller: _controller, // assign it to PageView
              children: <Widget>[
                Following(),
                ForYou(),
                // page2
              ],
            )
          : Center(
              child: widgetOptions.elementAt(myIndex),
            ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outlined,
              size: 40,
            ),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: myIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }
}
