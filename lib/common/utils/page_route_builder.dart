import 'package:flutter/cupertino.dart';

class CustomPageRote extends PageRouteBuilder{
  final Widget widget;
  final String routeName;
  Curve curve;
  CustomPageRote({@required this.widget,@required this.routeName, this.curve = Curves.ease}):super(
          settings: RouteSettings(name: routeName),
          transitionDuration: Duration(seconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation =
                CurvedAnimation(parent: animation, curve: curve);
            return ScaleTransition(
              alignment: Alignment.centerLeft,
              scale: animation,
              child: child,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            return widget;
          });
}