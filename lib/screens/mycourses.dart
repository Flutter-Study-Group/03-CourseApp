import 'package:courseapp/constants.dart';
import 'package:courseapp/screens/payment_page.dart';
import 'package:courseapp/widgets/course_card.dart';
import 'package:courseapp/widgets/statCard.dart';
import 'package:flutter/material.dart';

class MyCourses extends StatefulWidget {
  @override
  _MyCoursesState createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 25,
        ),
        unselectedIconTheme: IconThemeData(color: Colors.white24, size: 25),
        backgroundColor: primaryColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              title: Text("Add")),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/size.png"),
              ),
              title: Text("Size")),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inbox,
            ),
            title: Text("inbox"),
          )
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      backgroundColor: backgroundColor,
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text("Your Courses",
                  style: textStyle.copyWith(
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
            ),
            buildMyCourseList(),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text("Personal statistics",
                  style: textStyle.copyWith(
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
            ),
            buildStatistics(),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18),
              child: Text("Learn more, way faster",
                  style: textStyle.copyWith(
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 58,
              width: 350,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(12)),
              child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Payment()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Text(
                        "Go Pro Now",
                        style: textStyle.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "and save 80%",
                        style: textStyle.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  buildMyCourseList() {
    return Container(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          CourseCard(
            image: AssetImage("assets/Group.png"),
            title: "UI/UX on Figma",
            author: "Christopher D.",
          ),
          CourseCard(
            image: AssetImage("assets/flutter-logo.png"),
            title: "Flutter workshop",
            author: "Katalina C.",
          ),
          CourseCard(
            image: AssetImage("assets/cib_atlassian.png"),
            title: "Atlassian",
            author: "Florian H.",
          ),
        ],
      ),
    );
  }

  buildStatistics() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10, top: 20, bottom: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            StatCard(
                value: 11,
                title: "Courses completed",
                color: Color(0xFFF5F5F7)),
            StatCard(
                value: 3,
                title: "Courses in progress",
                color: Color(0xFFF5F5F7))
          ],
        ),
      ),
    );
  }
}
