import 'package:flutter/material.dart';
import 'package:forum_sharify/constants.dart';
import 'package:forum_sharify/forumTabs.dart';

void main() {
  runApp(Forum());
}

class Forum extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: kbackgroundWhite,
          accentColor: kalphaGreen,
          scaffoldBackgroundColor: kbackgroundGrey,
        ),
        home: forumTabs());
  }
}
