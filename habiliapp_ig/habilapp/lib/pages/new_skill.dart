import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';

class NewSkill extends StatefulWidget {
  static String tag = 'New-Skill';

  @override
  _NewSkillState createState() => new _NewSkillState();
}

class _NewSkillState extends State<NewSkill> {
  int selectedArea;
  int selectedLevel;
  int val;
  String techno = '.....';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final technologyKey = GlobalKey<FormState>();
  final versionKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    selectedArea = 0;
    selectedLevel = 0;
  }

  setSelectedArea(int val) {
    setState(() {
      selectedArea = val;
      print(selectedArea);
    });
  }

  setSelectedLevel(int val) {
    setState(() {
      selectedLevel = val;
      print(selectedLevel);
    });
  }

  setTechno(int val) {
    if (val == 1) {
      return (techno = 'Ej: Windows, Linux, Cisco, Etc.');
    } else if (val == 2) {
      return (techno = 'Ej: Java, Phyton, C#, Dart, Etc.');
    } else {
      return (techno = '.....');
    }
  }

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
                        Navigator.of(context).pushNamed(Home.tag);
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

    final logoHabilApp = Hero(
        tag: 'logoHabilApp',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 45,
          child: Image.asset('assets/habilapp2.png'),
        ));

    final skills = Hero(
      tag: 'Skills',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 60.0,
        child: Image.asset(
          'assets/Skills.png',
        ),
      ),
    );

    final textArea = Text(
      'Areá:',
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
      textAlign: TextAlign.start,
    );

    final textLevel = Text(
      'Nivel:  ',
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
      textAlign: TextAlign.start,
    );

    final technology = form(setTechno(selectedArea), technologyKey);

    final version = form('Versión', versionKey);

    return Scaffold(
      backgroundColor: Color(0xff0e3d4d),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: exit,
        actions: <Widget>[
          Container(
            height: 45,
            padding: EdgeInsets.only(right: 10),
            child: logoHabilApp,
            alignment: Alignment.topRight,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 5.0),
            Center(
              child: Column(
                children: <Widget>[
                  skills,
                  SizedBox(height: 30.0),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        expanded(textArea),
                        Text('Infraestructura:'),
                        expanded(radio(1, selectedArea)),
                        Text('Desarrollo:'),
                        expanded(radio(2, selectedArea)),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  technology,
                  SizedBox(height: 10.0),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        expanded(textLevel),
                        Text('Alto:'),
                        expanded(radio2(1, selectedLevel)),
                        Text('Medio:'),
                        expanded(radio2(2, selectedLevel)),
                        Text('Bajo:'),
                        expanded(radio2(3, selectedLevel)),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  version,
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          color: Colors.transparent,
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.transparent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Home.tag);
        },
        child: Icon(Icons.playlist_add),
        tooltip: 'Increment',
        elevation: 1.0,
      ),
    );
  }

  Widget radio(int value, int groupValue) {
    return Radio(
      value: value,
      groupValue: groupValue,
      onChanged: (val) {
        setSelectedArea(val);
      },
    );
  }

  Widget radio2(int value, int groupValue) {
    return Radio(
      value: value,
      groupValue: groupValue,
      onChanged: (val) {
        setSelectedLevel(val);
      },
    );
  }

  Widget expanded(Widget widget) {
    return Expanded(
      child: widget,
      flex: 1,
    );
  }

  Widget form(String str, Key key) {
    return (Form(
      key: key,
      child: TextFormField(
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: InputDecoration(
          hintText: str,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    ));
  }
}
