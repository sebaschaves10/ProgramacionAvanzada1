import 'package:app_comidas/models/menu1.dart';
import 'package:app_comidas/pages/cupones.dart';
import 'package:app_comidas/pages/login.dart';
import 'package:app_comidas/pages/otra_pagina.dart';
import 'package:app_comidas/pages/ubicacion.dart';
import 'package:flutter/material.dart';

class Tiendas extends StatefulWidget {
  @override
  _TiendasState createState() => _TiendasState();
}

class _TiendasState extends State<Tiendas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFFF8853),
          title: Text('Citas y Agendamientos'),
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
        backgroundColor: Color(0xFFFF8853),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 165.0),
              child: Row(
                children: <Widget>[
                  Text('Ubicacion',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: Colors.white))
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 195.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(75.0),
                      bottomRight: Radius.circular(105.0))),
              child: ListView(
                padding: EdgeInsets.only(top: 150.0, left: 30.0, right: 10.0),
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 200.0,
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 0.1,
                          childAspectRatio: 0.700,
                          children: <Widget>[
                            _ubicacionItem(
                                'Ubicacion', 'assets/images/mapa.png'),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ));
  }

  Widget _ubicacionItem(String nombre, String imagen) {
    return Padding(
        padding: EdgeInsets.all(2.0),
        child: Container(
            child: new Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(105.0)),
                color: Color(0xFFE6E4EB),
                elevation: 12,
                child: new Column(children: <Widget>[
                  new Hero(
                      tag: imagen,
                      child: new Material(
                          child: Container(
                              color: Color(0xFFE6E4EB),
                              child: InkWell(
                                onTap: () => Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (context) => Ubicacion(
                                            nombre: nombre, imagen: imagen))),
                                child: new Image.asset(
                                  imagen,
                                  fit: BoxFit.contain,
                                  width: 130,
                                  height: 130,
                                ),
                              )))),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                  ),
                  Text(nombre,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black)),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                  ),
                ]))));
  }
}
