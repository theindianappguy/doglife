import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Passord"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Current Password",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    obscureText: true,
                    initialValue: "Sanskar Tiwari",
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "New Password",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    obscureText: true,
                    initialValue: "theindianappguy@gmail.com",
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Re-Enter Password",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    obscureText: true,
                    initialValue: "+91 7999193854",
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
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
                    "Update",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
