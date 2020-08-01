import 'package:chamekhan/common/constants/router_constants.dart';
import 'package:chamekhan/presentation/journey/Input/first_input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'journey/home/home_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.initial:
        return null;
      case RouteName.homeScreen:
        return MaterialPageRoute(
            settings: RouteSettings(name: RouteName.homeScreen),
            builder: (_) => HomeScreen());
      case RouteName.firstInputScreen:
        return MaterialPageRoute(
            settings: RouteSettings(name: RouteName.firstInputScreen),
            builder: (_) => Page1());
    }
  }
}
