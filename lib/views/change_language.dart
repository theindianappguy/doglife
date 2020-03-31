import 'package:doglife/data/language_data.dart';
import 'package:doglife/models/language_model.dart';
import 'package:flutter/material.dart';

class ChangeLanguage extends StatefulWidget {
  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

String selectedCountryName = "India";

class _ChangeLanguageState extends State<ChangeLanguage> {
  List<LanguageModel> languages = new List<LanguageModel>();

  @override
  void initState() {
    languages = getLanguage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("language"),
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
        child: Column(
          children: <Widget>[
            ListView.builder(
                itemCount: languages.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return FlagSelectTile(
                    countryName: languages[index].countryName,
                    flagImgPath: languages[index].flagImgPath,
                    context: this,
                  );
                }),
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
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

class FlagSelectTile extends StatefulWidget {
  final String flagImgPath;
  final String countryName;
  final _ChangeLanguageState context;
  FlagSelectTile(
      {@required this.countryName,
      @required this.flagImgPath,
      @required this.context});

  @override
  _FlagSelectTileState createState() => _FlagSelectTileState();
}

class _FlagSelectTileState extends State<FlagSelectTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (selectedCountryName == widget.countryName) {
        } else {
          widget.context.setState(() {
            selectedCountryName = widget.countryName;
          });
        }
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    widget.flagImgPath,
                    height: 40,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    widget.countryName,
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                  ),
                  Spacer(),
                  widget.countryName == selectedCountryName
                      ? Container(
                          width: 23,
                          height: 23,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              gradient: LinearGradient(colors: [
                                const Color(0xffF58524),
                                const Color(0xffF92B7F),
                              ])),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 14,
                          ),
                        )
                      : Container(
                          width: 23,
                          height: 23,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Colors.grey, width: 1)))
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 0.4,
                color: Colors.grey.withOpacity(0.5),
              )
            ],
          )),
    );
  }
}
