import 'package:chamekhan/data/models/card_model.dart';
import 'package:flutter/material.dart';

class PoemList extends StatefulWidget {
  @override
  _PoemListState createState() => _PoemListState();
}

class _PoemListState extends State<PoemList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 100,bottom: 100),
      itemCount: cardModels.length,
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
