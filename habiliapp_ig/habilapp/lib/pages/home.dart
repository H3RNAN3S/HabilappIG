import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pruebas/Classes/perfil.dart';
import 'package:pruebas/Widgets/ListCard.dart';
import 'package:pruebas/pages/login_page.dart';
import 'package:pruebas/pages/new_skill.dart';

class Home extends StatelessWidget {
  static String tag = "home";
  Perfil datos;
  Home({Key key, @required this.datos}): super(key: key);
  @override
  Widget build(BuildContext context) {
    final exit = Container(
      child: Ink(
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.white,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('SALIDA'),
                  content: Text('¿Quieres salir?'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('No'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    FlatButton(
                      child: Text('Sí'),
                      onPressed: () {
                        Navigator.of(context).pushNamed(LoginPage.tag);
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );

    final logohabilapp = Hero(
        tag: 'logoHabilapp',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 45,
          child: Image.asset('assets/habilapp2.png'),
        ));

    final fotoperfil = Hero(
      tag: 'fotoPerfil',
      child: Container(
          child: CircleAvatar(
            radius: 40.0,
            //backgroundColor: Colors.amber,
            backgroundImage: AssetImage('assets/${datos.img}'),
          ),
          padding: EdgeInsets.all(5), // borde width
          decoration: BoxDecoration(
            color: Color(0xff3c98ff), // border color
            shape: BoxShape.circle,
          )),
    );

    final perfil = Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 8.0),
              fotoperfil,
              SizedBox(height: 10.0),
              Text(datos.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
              SizedBox(height: 2.0),
              Text(datos.profession,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17)),
              SizedBox(height: 10.0),
            ],
          ),
        ));

    return Scaffold(
      backgroundColor: Color(0xff0e3d4d),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: exit,
        actions: <Widget>[
          Container(
            height: 45,
            padding: EdgeInsets.only(right: 10),
            child: logohabilapp,
            alignment: Alignment.topRight,
          ),
        ],
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 5.0),
            Container(
              //color: Colors.orange,
              padding: EdgeInsets.only(right: 10, left: 10),
              child: perfil,
            ),
            Container(
              //color: Colors.purple,
              padding: EdgeInsets.only(right: 30, left: 30),
              child: ListCard(),
              height: 260,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
            color: Colors.transparent
        ),
        shape: CircularNotchedRectangle(),
          color: Color(0xff3c98ff),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(NewSkill.tag);
        },
        child: Icon(Icons.add),
        tooltip: 'Increment',
        elevation: 2.0,
      ),
    );
  }
}
