import 'package:flutter/material.dart';
import 'page/dashboard.dart';
import 'page/favourite.dart';
import 'page/settings.dart';
import 'page/profile.dart';
import 'page/add.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screen = [
    Dashboard(),
    favourite(),
    Profile(),
    Setting(),
    HomePage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
          foregroundColor: Colors.green,
          elevation: 0,
          onPressed: () {
            setState(() {
              currentScreen = HomePage();
              currentTab = 4;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
                height: 60,
                color: Colors.black87,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                                minWidth: 40,
                                onPressed: () {
                                  setState(() {
                                    currentScreen = Dashboard();
                                    currentTab = 0;
                                  });
                                },
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: currentTab == 0
                                            ? Colors.green
                                            : Colors.white60,
                                      ),
                                      Text(
                                        'Dashboard',
                                        style: TextStyle(
                                            color: currentTab == 0
                                                ? Colors.green
                                                : Colors.white60),
                                      )
                                    ])),
                            MaterialButton(
                                minWidth: 40,
                                onPressed: () {
                                  setState(() {
                                    currentScreen = favourite();
                                    currentTab = 1;
                                  });
                                },
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: currentTab == 1
                                            ? Colors.green
                                            : Colors.white60,
                                      ),
                                      Text(
                                        'Liked',
                                        style: TextStyle(
                                            color: currentTab == 1
                                                ? Colors.green
                                                : Colors.white60),
                                      )
                                    ]))
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                                minWidth: 40,
                                onPressed: () {
                                  setState(() {
                                    currentScreen = Setting();
                                    currentTab = 2;
                                  });
                                },
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.settings,
                                        color: currentTab == 2
                                            ? Colors.green
                                            : Colors.white60,
                                      ),
                                      Text(
                                        'Setting',
                                        style: TextStyle(
                                            color: currentTab == 2
                                                ? Colors.green
                                                : Colors.white60),
                                      )
                                    ])),
                            MaterialButton(
                                minWidth: 40,
                                onPressed: () {
                                  setState(() {
                                    currentScreen = Profile();
                                    currentTab = 3;
                                  });
                                },
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: currentTab == 3
                                            ? Colors.green
                                            : Colors.white60,
                                      ),
                                      Text(
                                        'Profile',
                                        style: TextStyle(
                                            color: currentTab == 3
                                                ? Colors.green
                                                : Colors.white60),
                                      )
                                    ]))
                          ])
                    ]))));
  }
}
