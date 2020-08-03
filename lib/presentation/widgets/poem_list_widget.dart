import 'package:flutter/material.dart';

class PoemList extends StatefulWidget {
  @override
  _PoemListState createState() => _PoemListState();
}

class _PoemListState extends State<PoemList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: null,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Container(
            height: 100,
            width: 100,
            child: null,
          ),
        );
      },
    );
  }
}
