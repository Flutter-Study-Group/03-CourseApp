import 'package:courseapp/screens/mycourses.dart';
import 'package:flutter/material.dart';
import 'package:courseapp/constants.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/bust-1.png")),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Hey Aman,\nthere's a new course about Figma",
                style: textStyle.copyWith(
                  color: primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "Find out how our new matching tool can help you learn another way",
                style: textStyle.copyWith(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 284,
              height: 58,
              color: primaryColor,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyCourses()));
                },
                child: Text(
                  "Discover the course",
                  style: textStyle.copyWith(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {},
              child: Text("Not now",
                  style: textStyle.copyWith(color: Colors.grey, fontSize: 15)),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
