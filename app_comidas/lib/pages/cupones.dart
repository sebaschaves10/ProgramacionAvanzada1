import 'package:app_comidas/models/menu1.dart';
import 'package:app_comidas/models/productos_model.dart';
import 'package:app_comidas/pages/cupones.dart';
import 'package:app_comidas/pages/login.dart';
import 'package:app_comidas/pages/otra_pagina.dart';
import 'package:app_comidas/pages/pedido_lista.dart';
import 'package:app_comidas/pages/tiendas.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VerCupones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF8853),
        title: Text("Cupones"),
      ),
      drawer: Container(
        width: 170.0,
        child: Drawer(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            color: Colors.black,
            child: new ListView(
              padding: EdgeInsets.only(top: 50.0),
              children: <Widget>[
                Container(
                  height: 170,
                  child: new UserAccountsDrawerHeader(
                    accountName: new Text(''),
                    accountEmail: new Text(''),
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image: AssetImage('assets/images/logopelagos.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                new Divider(),
                new ListTile(
                  title: new Text(
                    'Inicio',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.home,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => OtraPagina(),
                    ),
                  ),
                ),
                new Divider(),
                new ListTile(
                  title: new Text(
                    'Cupones',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.card_giftcard,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => VerCupones(),
                    ),
                  ),
                ),
                new Divider(),
                new ListTile(
                  title: new Text(
                    'Ubicación',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.place,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => Tiendas(),
                    ),
                  ),
                ),
                new Divider(),
                new ListTile(
                  title: new Text(
                    'Productos',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.fastfood,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => MyHomePage(),
                    ),
                  ),
                ),
                new Divider(),
                new ListTile(
                  title: new Text(
                    'Salir',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.close,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => Login(),
                    ),
                  ),
                ),
                new Divider(),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: FlatButton(
          child: Text(
            "Ver cupones",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w300),
          ),
          onPressed: () {
            _Cupones(context);
          },
        ),
      ),
    );
  }

  void _Cupones(BuildContext context) {
    showDialog(
        //Widget que pérmite mostrar el simpleDialog
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: Color(0xFFFF8853),
            //Es el widget con las caracteristicas y propiedades del dialgo
            title: Text(
              "Seleccione cupon",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            children: [
              ListTile(
                title: Text(
                    "Lo sentimos, por el momento no cuenta con ningun cupon :(",
                    textAlign: TextAlign.center),
              ),
              ListTile(
                title: Text("Ver productos"),
                leading: Icon(Icons.fastfood),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
              ),
              ListTile(
                title: Text("Cerrar"),
                leading: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          );
        },
        barrierDismissible: false);
  }
}
