import 'package:flutter/material.dart';

import 'package:study_group_project1/components.dart';
import 'package:study_group_project1/screens/landing_page.dart';
import 'package:study_group_project1/screens/inbox.dart';

class YourCourses extends StatefulWidget {
  @override
  _YourCoursesState createState() => _YourCoursesState();
}

class _YourCoursesState extends State<YourCourses> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                top: 50.0,
                bottom: 15.0,
              ),
              child: Text(
                'Your Courses',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            CoursesAvailable(),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                'Personal statistics',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      color: Color(0xFFF5F5F7),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '11',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 46.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Courses Completed',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    color: Color(0xFFF5F5F7),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '3',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 46.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Courses in Progress',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 30.0,
              ),
              child: Text(
                'Learn more way faster',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 20.0,
              ),
              child: Stack(
                children: <Widget>[
                  Image.asset('images/GoPro-Button.png'),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 69.0,
                          top: 13.0,
                        ),
                        child: Text(
                          'Go Pro Now',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 17.0,
                        ),
                        child: Text(
                          '  and save 80%',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
