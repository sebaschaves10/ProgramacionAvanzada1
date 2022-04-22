import 'package:app_comidas/models/menu1.dart';
import 'package:app_comidas/pages/cardViews/pageInicio.dart';
import 'package:app_comidas/pages/cupones.dart';
import 'package:app_comidas/pages/login.dart';
import 'package:app_comidas/pages/tiendas.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(OtraPagina());

class OtraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF8853),
          title: Text('Inicio'),
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
      body: PageInicio(),
        /*body: Card(
          elevation: 10,
          child: Column(
            children: [
              Image(image: NetworkImage('https://www.teeth22.com/wp-content/uploads/2020/03/absceso-dental-800x399.png'))
            ]
          )
        ),*/
      );
  }
}
