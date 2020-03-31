import 'dart:io';

import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/forgot_pass_img.png",
                width: 160,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Forgot your password?",
                style: TextStyle(
                    color: Color(0xff3B3B3B),
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Please enter the email address associated with your email. We will email you a link to reset your password.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff3B3B3B)),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Email"),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
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
                      "Send",
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
                height: Platform.isIOS ? 130 : 100,
              )
            ],
          )),
    );
  }
}
