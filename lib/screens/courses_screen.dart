import 'package:course_app/components/animated_navbar.dart';
import 'package:course_app/components/course_card.dart';
import 'package:course_app/components/info_card.dart';
import 'package:course_app/components/modified_button.dart';
import 'package:course_app/screens/payment_screen.dart';
import 'package:course_app/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  static const String id = 'courses_screen';

  final List<CourseCard> courseCards = [
    CourseCard(
      courseTitle: 'UI/UX on Figma',
      courseInstructor: 'by Christopher D.',
      cardElements: <Positioned>[
        Positioned(
          top: 50.0,
          left: 60.0,
          child: Image.asset('assets/images/symbol_1.png'),
        ),
        Positioned(
          top: 30.0,
          right: 40.0,
          child: Image.asset('assets/images/faded-ellipse.png'),
        ),
      ],
    ),
    CourseCard(
      courseTitle: 'Flutter workshop',
      courseInstructor: 'by Katalina C.',
      cardElements: <Positioned>[
        Positioned(
          top: 50.0,
          left: 60.0,
          child: Image.asset('assets/images/flutter_logo.png'),
        ),
        Positioned(
          top: 40.0,
          left: 80.0,
          child: Image.asset('assets/images/Rect1-Card-2.png'),
        ),
        Positioned(
          top: 30.0,
          left: 90.0,
          child: Image.asset('assets/images/Rect2-Card-2.png'),
        ),
      ],
    ),
    CourseCard(
      courseTitle: 'Atlassian',
      courseInstructor: 'by Florian H.',
      cardElements: <Positioned>[
        Positioned(
          top: 45.0,
          left: 55.0,
          child: Image.asset('assets/images/symbol_2.png'),
        ),
        Positioned(
          top: 60.0,
          left: 105.0,
          child: Image.asset('assets/images/Rect1-Card-3.png'),
        ),
        Positioned(
          top: 40.0,
          left: 55.0,
          child: Image.asset('assets/images/Rect2-Card-3.png'),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Your courses',
                  style: kHeadingTextStyle,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.33,
                child: ListView.builder(
                  itemBuilder: (context, index) => courseCards[index],
                  scrollDirection: Axis.horizontal,
                  itemCount: courseCards.length,
                  shrinkWrap: true,
                ),
              ),
              Text(
                'Personal statistics',
                style: kHeadingTextStyle.copyWith(),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InfoCard(
                    cardTitle: '11',
                    cardSubTitle: 'Courses\ncompleted',
                  ),
                  InfoCard(
                    cardTitle: '3',
                    cardSubTitle: 'Courses\nin progress',
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Learn more way faster',
                style: kHeadingTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: ModifiedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PaymentScreen.id);
                  },
                  buttonChild: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Go Pro Now',
                        style: kDefaultButtonTextStyle,
                      ),
                      TextSpan(
                        text: ' and save 80%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.20,
                      vertical: MediaQuery.of(context).size.width * 0.05),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AnimatedNavBar(),
      ),
    );
  }
}
