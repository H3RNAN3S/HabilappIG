import 'package:flutter/material.dart';
import 'package:pruebas/Classes/skills_data.dart';
import 'package:pruebas/Widgets/hability.dart';

class ListCard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ListCardState();
}
class ListCardState extends State<ListCard>{
  List<SkillData> cards = SkillData.cards();
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      //shrinkWrap: true, // muestrre mas elementos en pantalla completa
        itemCount: cards.length,// tamaño de la lista
        itemBuilder: (BuildContext context, int index){
          return Dismissible(key: ObjectKey(cards[index],),
            child: Habillity(cards[index]),
            onDismissed: (direction){
            setState(() {
              cards.removeAt(index);
            });
            },
          );
        });
  }

}