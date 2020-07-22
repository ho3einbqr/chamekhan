import 'dart:ui';
import 'package:chamekhan/common/utils/bar_clipper/bar_clipper.dart';

class AppBarClipper extends BarClipper{
  Path getClip(Size size) {
    Path path = Path();
    var y = size.width;
    var x = size.height;
    var xh = 8 * x / 15;
    path.lineTo(0, x);
    path.cubicTo(3 * y / 12, x, 3 * y / 12, x, 3 * y / 12, x);
    path.cubicTo(5 * y / 12, x, 5 * y / 12, xh, 6 * y / 12, xh);
    path.cubicTo(7 * y / 12, xh, 7 * y / 12, x, 9 * y / 12, x);
    path.lineTo(y, x);
    path.lineTo(y, 0);
    path.close();
    return path;
  }

}