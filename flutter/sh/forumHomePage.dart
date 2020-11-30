import 'package:flutter/material.dart';
import 'package:forum_sharify/constants.dart';
import 'package:forum_sharify/main.dart';
import 'package:forum_sharify/forumCard.dart';

class forumHomePage extends StatefulWidget {
  @override
  _forumHomePageState createState() => _forumHomePageState();
}

class _forumHomePageState extends State<forumHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "popular",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: kalphaGreen),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "newest",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: kbackgroundWhite,
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                    color: kbackgroundGrey,
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return forumCard(
                            forumBaslik: "Huge Istanbul 'Kermes'",
                            forumTarih: DateTime.now(),
                            forumIcerikYazi:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar imperdiet feugiat. Integer non mauris tellus. Ut ultrices magna ut risus iaculis dignissim. Quisque venenatis justo quis nisl blandit semper. Morbi risus urna, euismod non justo vitae, imperdiet luctus justo ",
                            forumIcerikFoto: "assets/forumFoto.png",
                            forumPaylasanKisi: "Umut Yeşildal",
                            forumPaylasanFoto: "assets/HalilAkkanat.jpg",
                            forumBegeni: "100",
                            forumYorum: "250",
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                        itemCount: 8)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
