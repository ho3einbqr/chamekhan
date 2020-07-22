import 'package:chamekhan/common/utils/bar_clipper/bar_clipper.dart';
import 'package:flutter/widgets.dart';

class BottomBarClipper extends BarClipper {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var y = size.width;
    var x = size.height;
    var xh = 9 * x / 15;
    path.lineTo(0, x);
    path.lineTo(y, x);
    path.lineTo(y, 0);
    path.cubicTo(9 * y / 12, 0, 9 * y / 12, 0, 9 * y / 12, 0);
    path.cubicTo(7 * y / 12, 0, 7 * y / 12, xh, 6 * y / 12, xh);
    path.cubicTo(5 * y / 12, xh, 5 * y / 12, 0, 3 * y / 12, 0);
    path.close();
    return path;
  }
}