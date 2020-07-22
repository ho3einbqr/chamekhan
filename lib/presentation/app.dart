import 'package:chamekhan/common/constants/router_constants.dart';
import 'package:chamekhan/presentation/routes.dart';
import 'package:chamekhan/presentation/theme/theme_color.dart';
import 'package:flutter/material.dart';

class ChameKhanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'chame Khan app',
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,

      theme: ThemeData(
        primaryColor: AppColor.primaryColor,
        fontFamily: 'Georgia',
      ),
    );
  }
}