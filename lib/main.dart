import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'liquid_pages.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: liquidPages,
      fullTransitionValue: 660,
      enableLoop: true,
      enableSlideIcon: true,
      positionSlideIcon: 0.00,
      initialPage: 0,
      waveType: WaveType.liquidReveal,
      onPageChangeCallback: (page) => pageChangeCallback(page),
      currentUpdateTypeCallback: (updateType) => updateTypeCallback(updateType),
    );
  }

  pageChangeCallback(int page) {
    print(page);
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }
}
