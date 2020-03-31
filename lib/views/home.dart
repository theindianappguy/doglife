import 'dart:io';

import 'package:doglife/views/create_post.dart';
import 'package:doglife/views/home/news.dart';
import 'package:doglife/views/home/notify.dart';
import 'package:doglife/views/home/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

String selectedTile = "Home";

Widget getWidget() {
  if (selectedTile == "Home") {
    return HomeScreen();
  } else if (selectedTile == "News") {
    return News();
  } else if (selectedTile == "CreatePost") {
    return CreatePost();
  } else if (selectedTile == "Notify") {
    return Notify();
  } else if (selectedTile == "Settings") {
    return Settings();
  } else{
    return HomeScreen();
  }
}

AppBar getAppBar() {
  if (selectedTile == "CreatePost") {
    return AppBar(
      title: Text("New Post"),
      actions: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        )
      ],
    );
  } else if (selectedTile == "News") {
    return AppBar(
      title: Text("News"),
      centerTitle: true,
    );
  } else if (selectedTile == "Home") {
    return AppBar(
      leading: Container(
        padding: EdgeInsets.all(10),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset("assets/profile.jpg", height: 20)),
      ),
      title: Image.asset("assets/dog_life_text_logo.png", height: 25),
      centerTitle: true,
      actions: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 16),
          child: Image.asset(
            "assets/search_grey.png",
            width: 25,
          ),
        )
      ],
    );
  } else if (selectedTile == "Settings") {
    return AppBar(
      title: Text("Settings"),
      centerTitle: true,
    );
  } else{
    return AppBar();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFCFDFE),
        appBar: getAppBar(),
        body: getWidget(),
        bottomSheet: BottomBar(
          selectedTile: selectedTile,
          context: this,
        ));
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Container(
            height: 150,
            width: 150,
            padding: EdgeInsets.all(35),
            decoration: BoxDecoration(
                color: Color(0xffF75356).withOpacity(0.1),
                borderRadius: BorderRadius.circular(100)),
            child: Image.asset(
              "assets/dog_sad_color.png",
              width: 160,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Sorry!",
            style: TextStyle(
                color: Color(0xff3B3B3B),
                fontSize: 23,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "There is no any result found in your location, Try after sometime to get better results.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xff3B3B3B), fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  final String selectedTile;
  final _HomeState context;
  BottomBar({@required this.selectedTile, this.context});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        color: Colors.white,
        height: 85,
        padding: EdgeInsets.only(
            right: 8, left: 8, top: 7, bottom: Platform.isIOS ? 20 : 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (selectedTile == "Home") {
                } else {
                  selectedTile = "Home";
                  widget.context.setState(() {});
                }
              },
              child: Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  widget.selectedTile == "Home"
                      ? Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                const Color(0xffF58524),
                                const Color(0xffF92B7F),
                              ])),
                        )
                      : Container(),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        widget.selectedTile == "Home"
                            ? "assets/home_dog_color.png"
                            : "assets/dog_grey.png",
                        height: 25,
                      ))
                ],
              )),
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                if (selectedTile == "News") {
                } else {
                  widget.context.setState(() {
                    selectedTile = "News";
                  });
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    widget.selectedTile == "News"
                        ? Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(colors: [
                                  const Color(0xffF58524),
                                  const Color(0xffF92B7F),
                                ])),
                          )
                        : Container(),
                    Opacity(
                      opacity: widget.selectedTile == "News" ? 1 : 0.4,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            widget.selectedTile == "News"
                                ? "assets/news_color.png"
                                : "assets/file_grey.png",
                            height: 25,
                          )),
                    )
                  ],
                ),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                if (selectedTile == "CreatePost") {
                } else {
                  widget.context.setState(() {
                    selectedTile = "CreatePost";
                  });
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [
                            const Color(0xffF58524),
                            const Color(0xffF92B7F),
                          ]),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/circular_add_icon.png",
                          height: 25,
                        ))
                  ],
                ),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                if (selectedTile == "Notify") {
                } else {
                  widget.context.setState(() {
                    selectedTile = "Notify";
                  });
                }
              },
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    widget.selectedTile == "Notify"
                        ? Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(colors: [
                                  const Color(0xffF58524),
                                  const Color(0xffF92B7F),
                                ])),
                          )
                        : Container(),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          widget.selectedTile == "Notify"
                              ? "assets/notification_color.png"
                              : "assets/notification_bell.png",
                          width: 25,
                        )),
                  ],
                ),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                if (selectedTile == "Settings") {
                } else {
                  widget.context.setState(() {
                    selectedTile = "Settings";
                  });
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    widget.selectedTile == "Settings"
                        ? Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(colors: [
                                  const Color(0xffF58524),
                                  const Color(0xffF92B7F),
                                ])),
                          )
                        : Container(),
                    Opacity(
                      opacity: widget.selectedTile == "Settings" ? 1 : 0.4,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            widget.selectedTile == "Settings"
                                ? "assets/settings_color.png"
                                : "assets/settings_grey.png",
                            height: 25,
                          )),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
