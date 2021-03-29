import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pruebas/Classes/Correos.dart';
import 'package:pruebas/Classes/perfil.dart';
import 'package:pruebas/pages/home.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<Correos> validation = Correos.login();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  final color = const Color(0xff0e3d4d);
  List<Perfil> datos = Perfil.dato();

  String _email;
  String _password;

  void _submit() {
    final form = formKey.currentState;
    form.save();
    if (form.validate()) {
      performLogin();
    }
  }

  void performLogin() {
    if(_email==validation[0].email){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(datos: datos[0]),
        ),
      );
    }else if(_email==validation[1].email){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(datos: datos[1]),
        ),
      );
    }else if(_email==validation[2].email){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(datos: datos[2]),
        ),
      );
    }else if(_email==validation[3].email){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(datos: datos[3]),
        ),
      );
    }
  }

  _validateEmail(String value) {
    if (value.isEmpty) {
      return 'El campo Email no puede estar vacío!';
    }
    for (var i =0; i<validation.length;i++ ){
      if (value == validation[i].email) {
        return null;
      }
    }
    return 'El Email suministrado no es válido. Intente otro correo electrónico';
  }
  _validatePassword(String value){
    if(value.isEmpty){
      return 'El campo Contraseña no puede estar vacío';
    }
    for (var i =0; i<validation.length;i++ ) {
      if (_email==validation[i].email && value==validation[i].password) {
        return null;
      }
    }
    return 'Error en contraseña o correo';
  }

  @override
  Widget build(BuildContext context) {

    final habilapp = hero('habilapp', 'habilapp2.png',50);

    final logo = hero('gif','Logo_login.gif',85.0);

    final email = Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Email',
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)),
              ),
              validator: (val) => _validateEmail(val),
              onSaved: (val) => _email = val,
            ),
            SizedBox(height: 8.0),
            TextFormField(
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide:
                        BorderSide(color: Color(0xffffffff), width: 10)),
              ),
              validator: (val) => _validatePassword(val),
              onSaved: (val) => _password = val,
            ),
          ],
        ));

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff3c98ff),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 50.0,
          onPressed: _submit,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(35.0)),
          color: Color(0xff3c98ff),
          child: Text('Sign in',
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: color,
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 26, right: 0),
              width: 150,
              child: habilapp,
            ),
            Container(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                children: <Widget>[
                  logo,
                  SizedBox(height: 30.0),
                  email,
                  SizedBox(height: 4.0),
                  loginButton,
                  forgotLabel
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hero(String tag, String img, double radio) {
    return (Hero(
        tag: tag,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: radio,
          child: Image.asset('assets/$img'),
        )));
  }
}
