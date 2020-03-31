import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String desc;
  NewsDetails(
      {@required this.desc, @required this.title, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Details"),
        actions: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                "assets/flag_grey.png",
                height: 20,
                width: 20,
              ))
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(imgUrl),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff3B3B3B),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(desc + desc + desc + desc + desc + desc + desc)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
