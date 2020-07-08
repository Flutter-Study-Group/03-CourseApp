import 'package:courseapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  GlobalKey<ScaffoldState> _key = new GlobalKey();
  TextEditingController _name = new TextEditingController();
  TextEditingController _cardNumber = new TextEditingController();
  TextEditingController _expDate = new TextEditingController();
  TextEditingController _CVC = new TextEditingController();
  String name, number, expDate, cvc;

  @override
  void initState() {
    super.initState();
    name = "Name of Card Holder";
    number = "0000  0000  0000  0000";
    expDate = "00/00";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              buildAppBar(),
              buildCard(),
              SizedBox(
                height: 20,
              ),
              buildForm(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Use this card",
                            style: textStyle.copyWith(
                                color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildCard() {
    return Container(
      height: 214,
      width: 327,
      decoration: BoxDecoration(
          color: primaryColor,
          gradient: LinearGradient(colors: [
            primaryColor,
            primaryColor.withOpacity(0.9),
            primaryColor.withOpacity(0.85),
            primaryColor.withOpacity(0.8),
//            Color(0xFF141E35).withOpacity(1),
          ]),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: Image(
              image: AssetImage("assets/mc_symbol.png"),
            ),
          ),
          Container(
            child: Text(number,
                style: textStyle.copyWith(color: Colors.white, fontSize: 26)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name.toUpperCase(),
                  style: textStyle.copyWith(color: Colors.white, fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                  textScaleFactor: 0.7,
                ),
                Text(
                  expDate,
                  style: textStyle.copyWith(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  buildAppBar() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              onPressed: () {
                Navigator.of(_key.currentContext).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Credit / Debit Card",
            style: textStyle.copyWith(
                color: primaryColor, fontSize: 22, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  buildForm() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _name,
              maxLength: 20,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff8698A8)),
                      borderRadius: BorderRadius.circular(12)),
                  labelText: "Name on card",
                  labelStyle: textStyle.copyWith(
                      color: Color(0xFF8698A8), fontSize: 20),
                  counterText: ""),
              style: textStyle.copyWith(
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                controller: _cardNumber,
                maxLength: 16 + 2 + 2 + 2,
                textCapitalization: TextCapitalization.characters,
                inputFormatters: [
                  MyInputFormater(),
                ],
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8698A8)),
                        borderRadius: BorderRadius.circular(12)),
                    labelText: "Card Number",
                    labelStyle: textStyle.copyWith(
                        color: Color(0xFF8698A8), fontSize: 20),
                    counterText: ""),
                style: textStyle.copyWith(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    number = value;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 154,
                    child: TextFormField(
                      textCapitalization: TextCapitalization.characters,
                      controller: _expDate,
                      maxLength: 5,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(5),
                        CardMonthFormatter()
                      ],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff8698A8)),
                              borderRadius: BorderRadius.circular(12)),
                          labelText: "Expiry date",
                          labelStyle: textStyle.copyWith(
                              color: Color(0xFF8698A8), fontSize: 20),
                          counterText: ""),
                      style: textStyle.copyWith(
                          color: primaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                      onChanged: (value) {
                        if (value.length <= 5)
                          setState(() {
                            expDate = value;
                          });
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 154,
                    child: TextFormField(
                        maxLength: 3,
                        textCapitalization: TextCapitalization.characters,
                        obscureText: true,
                        controller: _CVC,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff8698A8)),
                                borderRadius: BorderRadius.circular(12)),
                            labelText: "CVC",
                            labelStyle: textStyle.copyWith(
                                color: Color(0xFF8698A8), fontSize: 20),
                            counterText: ""),
                        style: textStyle.copyWith(
                            color: primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            cvc = value;
                          });
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyInputFormater extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    int newTextLength = newValue.text.length;
    StringBuffer newText = new StringBuffer();
    newText.write(newValue.text);
    if (newTextLength == 4 || newTextLength == 10 || newTextLength == 16) {
      newText.write('  ');
    }
    return TextEditingValue(
        text: newText.toString(),
        selection: TextSelection.collapsed(offset: newText.length));
  }
}

class CardMonthFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    int newTextLength = newValue.text.length;
    StringBuffer newText = new StringBuffer();
    newText.write(newValue.text);
    if (newTextLength == 2) {
      newText.write('/');
    }
    return TextEditingValue(
        text: newText.toString(),
        selection: TextSelection.collapsed(offset: newText.length));
  }
}
