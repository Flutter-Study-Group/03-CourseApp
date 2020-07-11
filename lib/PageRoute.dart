import 'package:flutter/cupertino.dart';

class BouncyPageRoute extends PageRouteBuilder {
  final Widget widget;
  BouncyPageRoute({this.widget})
      : super(
      transitionDuration: Duration(milliseconds: 190),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondanimation,
          Widget child) {
        animation = CurvedAnimation(
            parent: animation, curve: Curves.linearToEaseOut);
        return ScaleTransition(
          alignment: Alignment.center,
          scale: animation,
          child: child,
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondanimation) {
        return widget;
      });
}
