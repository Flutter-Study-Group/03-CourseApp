import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _cardNumber = '';
  String _expiryDate = '';
  String _cvc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    InkResponse(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const ShapeDecoration(
                          color: Color.fromRGBO(7, 8, 42, 0.15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        child: const Icon(Icons.arrow_back_ios, size: 18),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Credit / Debit Card',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: SvgPicture.asset(
                        'assets/payment/card.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 90,
                          ),
                          Text(
                            _cardNumber,
                            style: const TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  offset: Offset(0.0, 0.7),
                                  blurRadius: 3.0,
                                  color: Color.fromARGB(80, 77, 5, 169),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _name,
                                style: const TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                _expiryDate,
                                style: const TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SvgPicture.asset(
                'assets/payment/photo.svg',
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        onChanged: (text) {
                          setState(() {
                            _name = text;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Name on card',
                          labelStyle: const TextStyle(fontSize: 14),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.all(13),
                        ),
                        style: const TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (text) {
                          setState(() {
                            _cardNumber = text;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Card number',
                          labelStyle: const TextStyle(fontSize: 14),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.all(13),
                        ),
                        style: const TextStyle(fontSize: 17),
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(16),
                          CardNumberInputFormatter(),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              onChanged: (text) {
                                setState(() {
                                  _expiryDate = text;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Expiry date',
                                labelStyle: const TextStyle(fontSize: 14),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.all(13),
                              ),
                              style: const TextStyle(fontSize: 17),
                              inputFormatters: [
                                WhitelistingTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(4),
                                ExpiryDateInputFormatter(),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextFormField(
                                onChanged: (text) {
                                  setState(() {
                                    _cvc = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: 'CVC',
                                  labelStyle: const TextStyle(fontSize: 14),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  suffixIcon: SvgPicture.asset(
                                      'assets/payment/cvc.svg',
                                      fit: BoxFit.scaleDown,
                                      alignment: FractionalOffset.center),
                                  contentPadding: const EdgeInsets.all(13),
                                ),
                                style: const TextStyle(fontSize: 17),
                                inputFormatters: [
                                  WhitelistingTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(3),
                                ]),
                          ),
                        ],
                      ),
                    ],
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
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Text(
                      'Use this card',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    final buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      final nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write('  '); // Add double spaces.
      }
    }

    final string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

class ExpiryDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    final buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      final nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != text.length) {
        buffer.write('/'); // Add double spaces.
      }
    }

    final string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}
