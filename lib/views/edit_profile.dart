import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Edit Profile"),
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
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              height: 180,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1578857182382-c6f9c4dc5bad?ixlib=rb-1.2.1&auto=format&fit=crop&w=1867&q=80",
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/edit_color_icon.png",
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name"),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    initialValue: "Sanskar Tiwari",
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text("Email"),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    initialValue: "theindianappguy@gmail.com",
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text("Phone Number"),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
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
