import 'package:flutter/widgets.dart';

abstract class BarClipper extends CustomClipper<Path>{
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}