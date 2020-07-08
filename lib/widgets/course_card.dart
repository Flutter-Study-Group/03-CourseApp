import 'package:courseapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final image;
  final title;
  final author;

  CourseCard({this.image, this.title, this.author});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
      child: Container(
        width: 135,
        child: Column(
          children: <Widget>[
            Container(
              height: 135,
              width: 135,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Image(
                image: image,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: textStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "by $author",
                    style: textStyle.copyWith(
                        color: primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
