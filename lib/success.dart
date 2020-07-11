import 'package:animated_background/animated_background.dart';
import 'package:coursesapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PageRoute.dart';

class success extends StatefulWidget {
  @override
  _successState createState() => _successState();
}

class _successState extends State<success> with TickerProviderStateMixin {
  static const numBehaviours = 6;

  // Particles

  ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('assets/images/star_stroke.png'),
    baseColor: Colors.blue,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.05,
    maxOpacity: 0.2,
    spawnMinSpeed: 3.0,
    spawnMaxSpeed: 5.0,
    spawnMinRadius: 7.0,
    spawnMaxRadius: 8.0,
    particleCount: 20,
  );

  Behaviour _buildBehaviour() {
    return RandomParticleBehaviour(
      options: particleOptions,
    );
  }

  @override
  Widget build(BuildContext context) {
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
            'Confirmation',
            style: TextStyle(
                color: Color(0xff172137),
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins'),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: AnimatedBackground(
        behaviour: _buildBehaviour(),
        vsync: this,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Image.asset('images/confirmationlike.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "     Thank you \n for Reservations!",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          color: Colors.black54,fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 54.0,
                      child: new FlatButton(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18.5,
                          ),
                        ),
                        color: Color(0xff267dce),
                        onPressed: () {
                          setState(() {
                         Navigator.push(context, BouncyPageRoute(widget: MyPage()));
                          });
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
