import 'package:chamekhan/presentation/theme/theme_color.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  dynamic _icon;
  AppBarButton(this._icon);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: IconButton(
          icon: Icon(
            this._icon,
            color: AppColor.buttonColor,
          ),
          onPressed: () {},
          splashColor: AppColor.buttonSplashColor,
        ),
      ),
    );
  }
}