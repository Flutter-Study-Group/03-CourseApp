import 'package:coursesapp/PageRoute.dart';
import 'package:coursesapp/courses.dart';
import 'package:coursesapp/success.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'main.dart';

class Credit extends StatefulWidget {
  @override
  _CreditState createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      print("Has focus: ${_focusNode.hasFocus}");
    });
  }

  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  var _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  String visa_name = "visa.png";
  String realname = "Leslee Harron";
  String realexpiry = "04/22";
  String realcvv = "322";
  String realnumber = "4242 4242 4242 4242";
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double lol = MediaQuery.of(context).size.width;
    print(lol);
    if (lol < 500) {
      lol = MediaQuery.of(context).size.width / 1.8;
    } else {
      lol = 0;
    }

    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
            color: Color(0xff141F35),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(
          widthFactor: 1.5,
          child: Text(
            'Credit/Debit Card',
            style: TextStyle(
                color: Color(0xff172137),
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins'),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              /* Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/bese.png',
                      height: MediaQuery.of(context).size.height / 2,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Text Message',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      )),
                ],
              ),*/
              FlipCard(
                  key: cardKey,
                  flipOnTouch: true,
                  direction: FlipDirection.HORIZONTAL,
                  front: Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ],
                          ),
                          child: Image.asset(
                            'images/bese.png',
                            width: MediaQuery.of(context).size.width / 1.1,
                            height: 230,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'images/Ellipse.png',
                            width: lol,
                          ),
                        ),
                        Positioned(
                          width: MediaQuery.of(context).size.width / 1.05,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'images/$visa_name',
                              width: 40,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                              height: MediaQuery.of(context).size.height / 4,
                              padding: EdgeInsets.symmetric(
                                  vertical: 50, horizontal: 40),
                              alignment: Alignment.center,
                              child: Text(
                                realnumber,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height / 5,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 20),
                              alignment: Alignment.center,
                              child: Text(
                                realname.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontFamily: 'Poppins',
                                ),
                              )),
                        ),
                        Positioned(
                          right: 0,
                          top: MediaQuery.of(context).size.height / 5,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 20),
                              alignment: Alignment.center,
                              child: Text(
                                realexpiry.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontFamily: 'Poppins',
                                ),
                              )),
                        ),
                        /*Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Text Message',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      )),*/
                      ],
                    ),
                  ),
                  back: Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ],
                          ),
                          child: Image.asset(
                            'images/back.png',
                            width: MediaQuery.of(context).size.width / 1.1,
                            height: 230,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 40,
                          top: MediaQuery.of(context).size.height / 13,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 10),
                              alignment: Alignment.center,
                              child: Text(
                                realcvv,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                ),
                              )),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(
                  'images/svg.svg',
                  width: 50,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
                child: Text(
                  'Name on card',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      color: Color(0xff8698A8)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  inputFormatters: [
                    new WhitelistingTextInputFormatter(RegExp("[a-zA-Z ]")),
                    new LengthLimitingTextInputFormatter(15),
                  ],

                  keyboardType: TextInputType.text,
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(
                      color: Color(0xff8698A8),
                    )),
                  ),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'please Enter Name';
                    }
                  },
                  onChanged: (text) {
                    setState(() {
                      realname = nameController.text;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
                child: Text(
                  'Card Number',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      color: Color(0xff8698A8)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  inputFormatters: [
                    new WhitelistingTextInputFormatter(RegExp("[0-9 \\ ]")),
                    new LengthLimitingTextInputFormatter(19),
                  ],
                  controller: numberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 14.5),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'images/$visa_name',
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                    ),
                    labelText: 'Card Number',
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(
                      color: Color(0xff8698A8),
                    )),
                  ),
                  // ignore: missing_return
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'please Enter Card Number';
                    }
                    if (!value.contains(" ")) {
                      return 'Please use spaces between numbers';
                    }
                    int first = int.parse(value.split(" ").first);
                    if (first == 4111) {
                      visa_name = "visa.png";
                    }
                    if (first == 5500) {
                      visa_name = "mastercard.jpg";
                    }
                    if (first == 3000) {
                      visa_name = "diner.png";
                    }
                    if (first == 3400) {
                      visa_name = "americanexpress.png";
                    }
                    if (first == 6011) {
                      visa_name = "discover.png";
                    }
                    if (first == 3088) {
                      visa_name = "jcb.png";
                    }
                  },
                  onChanged: (text) {
                    setState(() {
                      realnumber = numberController.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        inputFormatters: [
                          new WhitelistingTextInputFormatter(
                              RegExp("[0-9 \\/]")),
                          new LengthLimitingTextInputFormatter(5),
                        ],
                        controller: expiryController,
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'please Enter Expiry Date';
                          }
                          if (!value.contains("/")) {
                            return 'Please use a backslash.';
                          }
                          if (value.length != 5) {
                            return 'please Enter A correct Expiry Date';
                          }
                          int first = int.parse(value.split("/").first);
                          if (first > 12) {
                            return 'Wrong Month';
                          }
                          int second = int.parse(value.split("/").last);
                          DateTime now = DateTime.now();
                          int currentYear =
                              int.parse(DateFormat('yy').format(now));
                          if (second > currentYear) {
                            return 'Wrong year';
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Expiry Date',
                          errorStyle: TextStyle(fontSize: 13.5),
                          border: OutlineInputBorder(
                              borderSide: new BorderSide(
                            color: Color(0xff8698A8),
                          )),
                        ),
                        onChanged: (text) {
                          setState(() {
                            realexpiry = expiryController.text;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Focus(
                          child: TextFormField(
                            inputFormatters: [
                              WhitelistingTextInputFormatter.digitsOnly,
                              new LengthLimitingTextInputFormatter(3),
                            ],
                            controller: cvvController,
                            keyboardType: TextInputType.number,
                            // ignore: missing_return
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'please Enter CVV';
                                // ignore: missing_return
                              }
                              if (value.length < 3 || value.length > 4) {
                                return "CVV is invalid";
                              }
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'CVV',
                                errorStyle: TextStyle(fontSize: 13),
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                  color: Color(0xff8698A8),
                                )),
                                suffixIcon: Icon(
                                  Icons.credit_card,
                                  color: Colors.black,
                                )),
                            onChanged: (text) {
                              setState(() {
                                realcvv = cvvController.text;
                              });
                            },
                          ),
                          onFocusChange: (hasFocus) {
                            if (hasFocus) {
                              if (cardKey.currentState.isFront) {
                                cardKey.currentState.toggleCard();
                              }
                            }
                            if (!hasFocus) {
                              if (!cardKey.currentState.isFront) {
                                cardKey.currentState.toggleCard();
                              }
                            }
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 64.0,
                child: new FlatButton(
                  child: Text(
                    'Use this Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18.5,
                    ),
                  ),
                  color: Color(0xff07122A),
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState.validate()) {
                        String name = nameController.text;
                        String expiry = expiryController.text;
                        String number = numberController.text;
                        String cvv = cvvController.text;
                        realexpiry = expiry;
                        realname = nameController.text;
                        realnumber = number;
                        realcvv = cvv;
                        Future.delayed(const Duration(milliseconds: 1500), () {
                            // Here you can write your code
                          setState(() {
                            // Here you can write your code for open new view
                            Navigator.push(context, BouncyPageRoute(widget: success()));
                          });

                        });
                      }
                    });
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.blue,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        color: Color(0xff07122A),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xff07122A),
        items: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyPage()));
              },
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              )),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => mycourses()));
            },
            child: Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Credit()));
              },
              child: Icon(
                Icons.compare_arrows,
                size: 30,
                color: Colors.white,
              )),
        ],
        onTap: (index) {
          setState(() {});
        },
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
