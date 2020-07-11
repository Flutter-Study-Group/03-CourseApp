import 'package:coursesapp/Payment.dart';
import 'package:coursesapp/main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first.dart';
import 'main.dart';

class mycourses extends StatefulWidget {
  @override
  _mycoursesState createState() => _mycoursesState();
}

class _mycoursesState extends State<mycourses> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double man = MediaQuery.of(context).size.width;
    if(man < 410)
    {
      man = MediaQuery.of(context).size.width / 3.7;
    }
    else{
      man = 150;
    }
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Your courses',
                  style: TextStyle(
                      color: Color(0xff07122A),
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Mycards(
                      'images/first.png', 'UI/UX on Figma', 'Christopher D.',1.0,0.0,0.0),
                  Mycards(
                      'images/second.png', 'Flutter workshop', 'Katalina C.',0.0,1.0,0.0),
                  Mycards(
                      'images/fourth.png', 'Atlassian', 'Florian H.',0.0,0.0,1.0),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 28.0, horizontal: 15),
              child: Text(
                'Personal Statistics',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    color: Color(0xff07122A),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Card(
                    borderOnForeground: true,
                    color: Colors.grey,
                    shadowColor: Colors.grey,
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Color(0xf0F5F5F7),
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '3 \n',
                            style: TextStyle(
                                color: Color(0xf0000000),
                                letterSpacing: -3,
                                fontSize: 38,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Courses in progress',
                                style: TextStyle(
                                  color: Color(0xf0000000),
                                  fontSize: 18,
                                  letterSpacing: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Card(
                    shadowColor: Colors.grey,
                    borderOnForeground: true,
                    color: Colors.grey,
                    child: Container(
                      width: man,
                      height: 150,
                      color: Color(0xf0F5F5F7),
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '11 \n',
                            style: TextStyle(
                                color: Color(0xf0000000),
                                letterSpacing: -3,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Courses Completed',
                                style: TextStyle(
                                  color: Color(0xf0000000),
                                  fontSize: 18,
                                  letterSpacing: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 28.0, horizontal: 15),
              child: Text(
                'Learn more way faster',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    color: Color(0xff07122A),
                    fontWeight: FontWeight.bold),
              ),
            ),
            new SizedBox(
              width: 284.0,
              height: 64.0,
              child: new FlatButton(
                child: Text(
                  'Go Pro Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 18.5,
                  ),
                ),
                color: Color(0xff07122A),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blue, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        color: Color(0xff07122A),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xff07122A),
        items: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyPage()));
              },
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              )),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Credit()));
              },
              child: Icon(
                Icons.compare_arrows,
                size: 30,
                color: Colors.white,
              )),
        ],
        onTap: (index) {
          setState(() {});
        },
      ),
    );
  }

  Widget Mycards(String image, String name, String author,double OpacityforEclipse,double OpacityforRectangle,double Opacityforlol) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(image),
              Positioned(
                width: MediaQuery.of(context).size.width / 2.5,
                right: 30,
                top: 30,
                child: Opacity(
                  opacity: OpacityforEclipse,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'images/secondellipse.png',
                      width: 100,
                    ),
                  ),
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width / 2.2,
                left: 30,
                top: 35,
                child: Opacity(
                  opacity: OpacityforRectangle,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'images/Rectangle.png',
                      width: 100,
                    ),
                  ),
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width / 2.2,
                left: 30,
                top: 10,
                child: Opacity(
                  opacity: OpacityforRectangle,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'images/Rectangle.png',
                      width: 100,
                    ),
                  ),
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width / 2.2,
                left: -60,
                top: -30,
                child: Opacity(
                  opacity: Opacityforlol,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'images/pop.png',
                      width: 100,
                    ),
                  ),
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width / 2.2,
                left: 0,
                top: -30,
                child: Opacity(
                  opacity: Opacityforlol,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'images/bom.png',
                      width: 100,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            '$name',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff07122A)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              ' by $author',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff07122A)),
            ),
          )
        ],
      ),
    );
  }
}
