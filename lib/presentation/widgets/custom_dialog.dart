import 'package:chamekhan/common/utils/bar_clipper/bottom_bar_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDialog extends StatelessWidget {
  Icon _icon;
  List<Widget> _widgets;

  CustomDialog({@required List<Widget> children, @required Icon icon}) {
    this._widgets = children;
    this._icon = icon;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          top: height / 3.25,
          bottom: height / 3.25,
          right: width / 15,
          left: width / 15),
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 0,
              right: 0,
              child: ClipPath(
                clipper: BottomBarClipper(),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
              ),
            ),
            Positioned(
              top: 60,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                //margin: EdgeInsets.only(top: 79),
                // color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (var item in this._widgets) item,
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              child: CircleAvatar(
                radius: 25,
                child: this._icon,
              ),
            )
          ],
        ),
      ),
    );
  }
}
