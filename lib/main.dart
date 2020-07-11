import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'PageRoute.dart';
import 'Payment.dart';
import 'courses.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyPage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SafeArea(child: SvgPicture.asset('images/girl.svg')),
                Text(
                  'Hey Lesslee,  there\'s a new course about figma.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff07122A),
                      fontSize: 29,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Find out how our new matching tool can help you learn another way',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff4F4F4F),
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 77,
                ),
                new SizedBox(
                  width: 284.0,
                  height: 64.0,
                  child: new FlatButton(
                    child: Text(
                      'Discover the course',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18.5,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Color(0xff07122A),
                    onPressed: (() {
                      Navigator.push(context, BouncyPageRoute(widget: mycourses()));
                    }),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.blue, width: 1, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            )),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xff07122A),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xff07122A),
        items: <Widget>[
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mycourses()),
                );
              },
              child: Icon(
                Icons.list,
                size: 30,
                color: Colors.white,
              )),
          FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Credit()),
                );
              },
              child: Icon(
                Icons.compare_arrows,
                size: 30,
                color: Colors.white,
              )),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
