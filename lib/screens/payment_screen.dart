import 'package:course_app/components/bank_card.dart';
import 'package:course_app/components/card_number_input_formatter.dart';
import 'package:course_app/components/date_input_formatter.dart';
import 'package:course_app/components/modified_button.dart';
import 'package:course_app/components/modified_text_field.dart';
import 'package:course_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentScreen extends StatefulWidget {
  static const String id = 'payment_screen';

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String _cardNumber = '4242 4242 4242 4242';
  String _cardHolderName = 'Leslee Harron';
  String _cardDate = '04/22';
  TextEditingController _numberTextController;
  FocusNode cardNumberFocus = FocusNode();
  FocusNode dateFocus = FocusNode();
  FocusNode cvcFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.97,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 45.0,
                        width: 45.0,
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.12),
                        decoration: BoxDecoration(
                          color: Color(0xffDADBDF),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                    Text(
                      'Credit / Debit Card',
                      style: kHeadingTextStyle,
                    ),
                  ],
                ),
                BankCard(
                  cardNumber: _cardNumber,
                  cardHolderName: _cardHolderName,
                  cardDate: _cardDate,
                ),
                Image.asset('assets/images/photo.png'),
                ModifiedTextField(
                  label: 'Name on card',
                  borderColour: Color(kDefaultHeadingColour),
                  focusedBorderColour: Color(kDefaultHeadingColour),
                  onChanged: (value) {
                    setState(() {
                      _cardHolderName = value;
                    });
                  },
                  onSubmitted: (value) {
                    FocusScope.of(context).requestFocus(cardNumberFocus);
                  },
                ),
                ModifiedTextField(
                  label: 'Card number',
                  borderColour: Color(kDefaultHeadingColour),
                  focusedBorderColour: Color(kDefaultHeadingColour),
                  textController: _numberTextController,
                  keyboardType: TextInputType.number,
                  inputFormatter: [
                    WhitelistingTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16),
                    CardNumberInputFormatter(),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _cardNumber = value;
                    });
                  },
                  onSubmitted: (value) {
                    FocusScope.of(context).requestFocus(dateFocus);
                  },
                  focusNode: cardNumberFocus,
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: ModifiedTextField(
                        label: 'Date',
                        keyboardType: TextInputType.number,
                        borderColour: Color(kDefaultHeadingColour),
                        focusedBorderColour: Color(kDefaultHeadingColour),
                        inputFormatter: [
                          WhitelistingTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(4),
                          DateInputFormatter(),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _cardDate = value;
                          });
                        },
                        onSubmitted: (value) {
                          FocusScope.of(context).requestFocus(cvcFocus);
                        },
                        focusNode: dateFocus,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ModifiedTextField(
                        label: 'CVC',
                        keyboardType: TextInputType.number,
                        inputFormatter: [
                          WhitelistingTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(3),
                        ],
                        suffixIcon: Image.asset('assets/images/Hint.png'),
                        borderColour: Color(kDefaultHeadingColour),
                        focusedBorderColour: Color(kDefaultHeadingColour),
                        focusNode: cvcFocus,
                      ),
                    ),
                  ],
                ),
                ModifiedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  buttonChild: Text(
                    'Use this card',
                    style: kDefaultButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
