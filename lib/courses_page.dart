import 'package:courses/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 1,
        iconSize: 30.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(80),
        backgroundColor: const Color(0xff07122A),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text('Home'),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Your courses',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CourseItem(
                      'UI/UX on Figma',
                      'Christopher D.',
                      'course1.svg',
                    ),
                    CourseItem(
                      'Flutter workshop',
                      'Katalina C.',
                      'course2.svg',
                    ),
                    CourseItem(
                      'Atlassian',
                      'Florian H.',
                      'course3.svg',
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Personal statistics',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StatisticsItem(
                    '11',
                    'Courses\ncompleted',
                  ),
                  StatisticsItem(
                    '3',
                    'Courses\nin progress',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Learn more way faster',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                color: const Color(0xff07122A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 23,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        'Go Pro Now',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('and save 80%',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatisticsItem extends StatelessWidget {
  final String _number;
  final String _text;

  const StatisticsItem(
    this._number,
    this._text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
        child: Column(
          children: [
            Text(
              _number,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              _text,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final String _title;
  final String _author;
  final String _asset;

  const CourseItem(
    this._title,
    this._author,
    this._asset, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/courses/$_asset',
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            _title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'by $_author',
            style: const TextStyle(
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }
}
