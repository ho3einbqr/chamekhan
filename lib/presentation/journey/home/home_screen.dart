import 'dart:ui';

import 'package:chamekhan/common/constants/graphic_constants.dart';
import 'package:chamekhan/common/constants/router_constants.dart';
import 'package:chamekhan/common/utils/bar_clipper/app_bar_clipper.dart';
import 'package:chamekhan/common/utils/bar_clipper/bottom_bar_clipper.dart';
import 'package:chamekhan/presentation/journey/dialog/account_dialog.dart';
import 'package:chamekhan/presentation/journey/dialog/info_diaolg.dart';
import 'package:chamekhan/presentation/theme/theme_color.dart';
import 'package:chamekhan/presentation/widgets/app_bar_button.dart';
import 'package:chamekhan/presentation/widgets/bar.dart';
import 'package:chamekhan/presentation/widgets/poem_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _changeFABOpacity;
  Color _fabColor;

  @override
  initState() {
    super.initState();
    _fabColor = AppColor.buttonColorAlpha255;
    _changeFABOpacity = new ScrollController();
    _changeFABOpacity.addListener(() {
      if (_changeFABOpacity.position.userScrollDirection ==
              ScrollDirection.reverse &&
          _fabColor == AppColor.buttonColorAlpha255)
        setState(() {
          _fabColor = AppColor.buttonColorAlpha200;
        });
      if (_changeFABOpacity.position.userScrollDirection ==
              ScrollDirection.forward &&
          _fabColor == AppColor.buttonColorAlpha200)
        setState(() {
          _fabColor = AppColor.buttonColorAlpha255;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          PoemList(),
          //AppBar
          Positioned(
            top: 0,
            child: Bar(80, Offset(0, 3), AppBarClipper()),
          ),
          //Logo
          Positioned(
            top: 40,
            left: 0,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [GraphicConstants.logo],
            ),
          ),
          //AppBar Buttons
          Positioned(
            top: 30,
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: <Widget>[
                AppBarButton(Icons.info, () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return InfoDialog();
                    },
                  );
                }),
                AppBarButton(Icons.account_circle, () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AccountDialog();
                    },
                  );
                }),
              ],
            ),
          ),
          //FAB
          Positioned(
            bottom: 30,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.firstInputScreen);
                  },
                  backgroundColor: _fabColor,
                  splashColor: AppColor.buttonSplashColor,
                  child: Icon(
                    Icons.add,
                    color: AppColor.eColorAlpha100,
                  ),
                ),
              ],
            ),
          ),
          //BottomBar
          Positioned(
            bottom: 0,
            child: Bar(50, Offset(0, -3), BottomBarClipper()),
          ),
        ],
      ),
    );
  }
}
