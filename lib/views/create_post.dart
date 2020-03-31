import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[],
            ),
            Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffF75356).withOpacity(0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Upload photo or video",
                    style: TextStyle(color: Color(0xffE25E31), fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: 80,
                      height: 80,
                      child: Image.asset("assets/dog_face_add.png"))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Snap something here..",
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration:
                  BoxDecoration(color: Color(0xffCFCFCF).withOpacity(0.21)),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/dog_face_logo.png",
                        height: 25,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Swipe Right to Publish",
                        style: TextStyle(
                            color: Color(0xff3B3B3B).withOpacity(0.5),
                            fontSize: 17),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
