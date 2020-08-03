import 'package:chamekhan/domain/entities/card_entity.dart';

class CardModel extends CardEntity {
  CardModel({
    String name,
    String poet,
    String type,
  }) : super(
          name: name,
          poet: poet,
          type: type,
        );
}

//test_list
List<CardModel> cardModels = [
  CardModel(name: 'n1',poet: 'p1',type: 't1'),
  CardModel(name: 'n2',poet: 'p2',type: 't2'),
  CardModel(name: 'n3',poet: 'p3',type: 't3'),
  CardModel(name: 'n4',poet: 'p4',type: 't4'),
  CardModel(name: 'n5',poet: 'p5',type: 't5'),
  CardModel(name: 'n6',poet: 'p6',type: 't6'),
  CardModel(name: 'n7',poet: 'p7',type: 't7'),
  CardModel(name: 'n8',poet: 'p8',type: 't8'),
];