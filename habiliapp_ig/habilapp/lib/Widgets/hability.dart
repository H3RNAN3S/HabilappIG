import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pruebas/Classes/skills_data.dart';

class Habillity extends StatelessWidget {
  SkillData cards;
  Habillity(this.cards);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Se puede presionar')));
        },
        child: Card(
            child: Container(
          width: 330,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
          child: Column(
            children: <Widget>[
              padding(Text('Tecnologia: '+cards.skill,
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900))),
              padding(Text('Área: '+cards.area,
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal))),
              padding(Text('Nivel: '+cards.nivel,
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal))),
              padding(Text('Versión: '+cards.version,
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal))),
              padding(Text(cards.date,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),)),
            ],
          ),
        )));
  }

  Widget padding(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: widget,
    );
  }

}
