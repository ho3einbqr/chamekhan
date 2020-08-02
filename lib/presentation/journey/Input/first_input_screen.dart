import 'package:chamekhan/common/constants/router_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('page 1'),
              FlatButton(
                color: Colors.green,
                child: Text('Next Page'),
                onPressed: (){
                  Navigator.pushNamed(context, RouteName.secondInputScreen);
                },
              ),
              FlatButton(
                color: Colors.red,
                child: Text('Cancel'),
                onPressed: (){
                  //Navigator.popAndPushNamed(context, RouteName.homeScreen);
                  Navigator.popUntil(context, ModalRoute.withName(RouteName.homeScreen));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
