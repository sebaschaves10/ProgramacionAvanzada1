import 'package:app_comidas/models/menu1.dart';
import 'package:app_comidas/pages/otra_pagina.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final num1 = 1;
  final num2 = 2;

  final _user = TextEditingController();
  final _pass = TextEditingController();

  String usuario = '';
  String contrasena = '';
  //final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    'GO!!!',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45.0,
                        color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            child: new Image(
                              width: 350.0,
                              height: 250.0,
                              image: new AssetImage(
                                  'assets/images/logopelagos.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: _user,
                      decoration: InputDecoration(
                          hintText: "Usuario",
                          icon: Icon(Icons.account_circle)),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: _pass,
                      decoration: InputDecoration(
                          hintText: "Contraseña", icon: Icon(Icons.vpn_key)),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CupertinoButton(
                            padding: EdgeInsets.symmetric(horizontal: 30.0),
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(30.0),
                            child: Text(
                              'Iniciar',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            onPressed: () {
                              usuario = _user.text;
                              contrasena = _pass.text;
                              print(usuario);
                              print(contrasena);

                              if (usuario == 'user' && contrasena == '1234') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage()));
                              } else {
                                return showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          content: Text(
                                              'Usuario o contraseña incorrectos'));
                                    });
                              }
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          CupertinoButton(
                            padding: EdgeInsets.symmetric(horizontal: 30.0),
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30.0),
                            child: Text(
                              'Cancelar',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            onPressed: () {},
                          )
                        ]),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      controller: _user,
      textCapitalization: TextCapitalization.sentences,
      maxLength: 50,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'Ingrese nombre de usuario',
        labelText: 'Usuario',
        helperText: '',
        icon: Icon(Icons.email, size: 32.0, color: Colors.blue[800]),
      ),
    );
  }

  Widget _crearInput2() {
    return TextField(
      controller: _pass,
      textCapitalization: TextCapitalization.sentences,
      maxLength: 20,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'Ingrese su contraseña',
        labelText: 'Contraseña',
        helperText: '',
        icon: Icon(Icons.lock, size: 32.0, color: Colors.blue[800]),
      ),
      obscureText: true,
    );
  }

  Widget _miboton() {
    return IconButton(
      onPressed: () {
        usuario = _user.text;
        contrasena = _pass.text;
        print(usuario);
        print(contrasena);

        if (usuario == 'sebas' && contrasena == '1234') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OtraPagina()));
        } else {
          return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    content: Text('Usuario o contraseña incorrectos'));
              });
        }
      },
      icon: Icon(
        Icons.arrow_forward,
        size: 42.0,
        color: Colors.blue[800],
      ),
    );
  }
}
