import 'package:flutter/material.dart';
import 'package:study_group_project1/screens/inbox.dart';
import 'package:study_group_project1/screens/your_courses.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 40.0,
          right: 40.0,
          top: 10.0,
        ),
        child: Column(
          children: <Widget>[
            Image.asset('images/lady.png'),
            Text(
              'Hey Leslee,\nthere\'s a new course about\nFigma',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF07122A),
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Find out how our new matching tool can help you learn another way',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF4F4F4F),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Stack(
                children: <Widget>[
                  Image.asset('images/Discover_Rectangle.png'),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 58.0,
                      vertical: 16.0,
                    ),
                    child: Text(
                      'Discover the course',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Not now',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFBDBDBD),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF07122A),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LandingPage()));
              },
              icon: Icon(
                Icons.add,
                size: 35.0,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => YourCourses()));
              },
              icon: Icon(
                Icons.home,
                size: 35.0,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Inbox()));
                },
                icon: Icon(
                  Icons.inbox,
                  size: 35.0,
                ),
              ),
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xFF51596A),
        onTap: _onItemTapped,
      ),
    );
  }
}
