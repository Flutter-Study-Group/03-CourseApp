import 'package:course_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String courseTitle;
  final String courseInstructor;
  final double cardHeigth;
  final double cardWidth;
  final List<Positioned> cardElements;

  CourseCard({
    @required this.courseTitle,
    @required this.courseInstructor,
    this.cardHeigth = 145.0,
    this.cardWidth = 145.0,
    this.cardElements,
  });

  List<Widget> getStackChildren() {
    List<Widget> stackChildren = [];
    stackChildren.add(
      Container(
        decoration: BoxDecoration(
          color: Color(kDefaultHeadingColour),
          borderRadius: BorderRadius.circular(18.0),
        ),
        height: this.cardHeigth,
        width: this.cardWidth,
        margin: EdgeInsets.all(8.0),
      ),
    );

    stackChildren.addAll(this.cardElements);

    return stackChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: getStackChildren(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Text(
            this.courseTitle,
            style: kHeadingTextStyle.copyWith(
                fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Text(
            this.courseInstructor,
            style: TextStyle(
              color: Color(kDefaultHeadingColour),
              fontSize: 13.0,
            ),
          ),
        ),
      ],
    );
  }
}
