import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'landing_page.dart';
import 'your_courses.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  String name = '';
  int _selectedIndex = 2;
  String cardNumber = '';
  String expiryDate = '';

  final _nameController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 32.0,
                  top: 20.0,
                ),
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        // BackButton
                        Card(
                          color: Color(0xFFDADBDF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            height: 42.0,
                            width: 42.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 14.0,
                            top: 14.0,
                          ),
                          child: Image.asset(
                            'images/backArrow.png',
                            height: 22.0,
                            width: 22.0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Credit / Debit Card',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Card
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      left: 15.0,
                    ),
                    child: Image.asset('images/creditCard.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 132.4,
                      top: 16.0,
                    ),
                    child: Image.asset('images/creditCard_circle.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 250.0,
                      top: 40.0,
                    ),
                    child: Image.asset('images/mastercard_logo.png'),
                  ),
                  // Card Number
                  Padding(
                    padding: EdgeInsets.only(
                      left: 45.0,
                      top: 100.0,
                    ),
                    child: Container(
                      height: 30.32,
                      child: cardNumber != ''
                          ? Text(
                              cardNumber,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 26.0,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              '4242 4242 4242 4242',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 26.0,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                  // Name on Card
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.0,
                      top: 165.0,
                    ),
                    child: name != ''
                        ? Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            'Gaurav Gupta',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                  ),
                  // Expiry Date
                  Padding(
                    padding: EdgeInsets.only(
                      left: 255.0,
                      top: 165.0,
                    ),
                    child: expiryDate != ''
                        ? Text(
                            expiryDate,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            '04/22',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: SvgPicture.asset(
                  'images/camera_svg.svg',
                  height: 34.0,
                  width: 34.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Name on card',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              // Name on Card TextField
              Container(
                margin: EdgeInsets.only(
                  left: 35.0,
                  right: 35.0,
                  bottom: 8.0,
                ),
                child: Theme(
                  data: ThemeData(
                    primaryColor: Color(0xFF07122A),
                    cursorColor: Color(0xFF597DDB),
                  ),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (newName) {
                      setState(() {
                        name = newName;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Card number',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              // Card Number TextField
              Container(
                margin: EdgeInsets.only(
                  left: 35.0,
                  right: 35.0,
                  bottom: 8.0,
                ),
                child: Theme(
                  data: ThemeData(
                    primaryColor: Color(0xFF07122A),
                    cursorColor: Color(0xFF597DDB),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (newCardNumber) {
                      setState(() {
                        cardNumber = newCardNumber;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Expiry date',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 110.0),
                        child: Text(
                          'CVC',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Expiry Date TextField
              Padding(
                padding: EdgeInsets.only(
                  left: 35.0,
                  bottom: 8.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 135.0,
                        child: Theme(
                          data: ThemeData(
                            primaryColor: Color(0xFF07122A),
                            cursorColor: Color(0xFF597DDB),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onChanged: (newExpiryDate) {
                              setState(() {
                                expiryDate = newExpiryDate;
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 55.0,
                          bottom: 8.0,
                        ),
                        child: Container(
                          width: 135.0,
                          child: Theme(
                            data: ThemeData(
                              primaryColor: Color(0xFF07122A),
                              cursorColor: Color(0xFF597DDB),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
      ),
    );
  }
}
