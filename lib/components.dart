import 'package:flutter/material.dart';

class CoursesAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 135.0,
                    width: 135.0,
                    child: Card(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'images/figma_logo.png',
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            top: 35.0,
                            right: 30.0,
                            child: Image.asset(
                              'images/circle.png',
                            ),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  Text(
                    'UI/UX on Figma',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'by Christopher D.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 135.0,
                    width: 135.0,
                    child: Card(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'images/Flutter_logo.png',
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            left: 65.0,
                            top: 15.0,
                            child: Image.asset(
                              'images/ClippedRectangle.png',
                            ),
                          ),
                          Positioned(
                            left: 35.0,
                            top: 10.0,
                            child: Image.asset(
                              'images/ClippedRectangle.png',
                            ),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  Text(
                    'Flutter workshop',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'by Katalina C.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 135.0,
                  width: 135.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/A_design.png',
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          left: 35.0,
                          top: 30.0,
                          child: Image.asset(
                            'images/Rectangle1.png',
                          ),
                        ),
                        Positioned(
                          left: 80.0,
                          top: 50.0,
                          child: Image.asset(
                            'images/Rectangle2.png',
                          ),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Text(
                  'Atlassian',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'by Florian H.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
