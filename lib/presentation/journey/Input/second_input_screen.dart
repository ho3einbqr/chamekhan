import 'package:chamekhan/common/constants/router_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('page 2'),
              /*FlatButton(
                color: Colors.green,
                child: Text('Next Page'),
                onPressed: (){
                  *//*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  );*//*
                },
              ),*/
              FlatButton(
                color: Colors.green,
                child: Text('Prev Page'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                color: Colors.red,
                child: Text('Cancel'),
                onPressed: (){
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