import 'package:flutter/material.dart';
import 'package:forum_sharify/constants.dart';
import 'package:forum_sharify/main.dart';
import 'package:forum_sharify/forumCard.dart';
import 'package:forum_sharify/getForumContent.dart';

class forumTabs extends StatefulWidget {
  @override
  _forumTabsState createState() => _forumTabsState();
}

class _forumTabsState extends State<forumTabs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: kalphaGreen,
              tabs: [
                Tab(
                  child: Text(
                    "popular",
                    style: TextStyle(
                        color: kalphaGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
                Tab(
                    child: Text(
                  "newest",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              getForumContent(),
              getForumContent(),
            ],
          ),
        ),
      ),
    );
  }
}
