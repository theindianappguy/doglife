import 'dart:io';

import 'package:flutter/material.dart';

class EnableLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Location"),
        centerTitle: true,
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              "Cancel",
              style: TextStyle(
                  fontSize: 17, color: Color(0xff3B3B3B).withOpacity(0.5)),
            ),
          )
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                    Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            color: Color(0xffF75356).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset("assets/location_icon.png")),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Location",
                      style: TextStyle(
                          color: Color(0xff3B3B3B),
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Please enable your location to get better search results in your location.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff3B3B3B)),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xffF58524),
                      const Color(0xffF92B7F),
                    ]),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Enable Location",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),

              ///
              SizedBox(
                height: Platform.isIOS ? 70 : 100,
              )
            ],
          )),
    );
  }
}
