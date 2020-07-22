import 'dart:ui';

import 'package:chamekhan/common/utils/bar_clipper/bar_clipper.dart';
import 'package:chamekhan/presentation/theme/theme_color.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/widgets.dart';

class Bar extends StatelessWidget {
  double _height;
  Offset _offset;
  BarClipper _clipper;
  Bar(this._height, this._offset,this._clipper);

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      boxShadow: [
        BoxShadow(
          color: AppColor.shadowColor,
          spreadRadius: 1,
          blurRadius: 6,
          offset: this._offset,
        )
      ],
      clipper: this._clipper,
      child: BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          height: this._height,
          width: MediaQuery.of(context).size.width,
          decoration:
          BoxDecoration(color: AppColor.eColorAlpha100),
        ),
      ),
    );
  }
}