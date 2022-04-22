import 'package:app_comidas/models/productos_model.dart';
import 'package:app_comidas/pages/cupones.dart';
import 'package:app_comidas/pages/login.dart';
import 'package:app_comidas/pages/otra_pagina.dart';
import 'package:app_comidas/pages/pedido_lista.dart';
import 'package:app_comidas/pages/tiendas.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ProductosModel> _productosModel = List<ProductosModel>();
  List<ProductosModel> _listaCarro = List<ProductosModel>();

  @override
  void initState() {
    super.initState();
    _productosDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF8853),
        title: Text('Productos'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 38,
                  ),
                  if (_listaCarro.length > 0)
                    Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          child: Text(
                            _listaCarro.length.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.0),
                          ),
                        ))
                ],
              ),
              onTap: () {
                if (_listaCarro.isNotEmpty)
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cart(_listaCarro),
                    ),
                  );
              },
            ),
          )
        ],
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
      body: _cuadroProductos(),
    );
  }

  GridView _cuadroProductos() {
    return GridView.builder(
      padding: const EdgeInsets.all(4.0),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: _productosModel.length,
      itemBuilder: (context, index) {
        final String image = _productosModel[index].image;
        var item = _productosModel[index];
        return Card(
            elevation: 4.0,
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: new Image.asset("assets/images/$image",
                          fit: BoxFit.contain),
                    ),
                    Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          item.price.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                            bottom: 8.0,
                          ),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              child: (!_listaCarro.contains(item))
                                  ? Icon(
                                      Icons.shopping_cart,
                                      color: Colors.green,
                                      size: 38,
                                    )
                                  : Icon(
                                      Icons.shopping_cart,
                                      color: Colors.red,
                                      size: 38,
                                    ),
                              onTap: () {
                                setState(() {
                                  if (!_listaCarro.contains(item))
                                    _listaCarro.add(item);
                                  else
                                    _listaCarro.remove(item);
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ));
      },
    );
  }

  void _productosDb() {
    var list = <ProductosModel>[
      ProductosModel(
        name: 'Burguer King',
        image: 'food1.png',
        price: 12000,
      ),
      ProductosModel(
        name: 'Pizza Italiana',
        image: 'food2.png',
        price: 17000,
      ),
      ProductosModel(
        name: 'Carne..',
        image: 'food3.png',
        price: 25000,
      ),
      ProductosModel(
        name: 'Burger',
        image: 'food4.png',
        price: 19000,
      ),
      ProductosModel(
        name: 'Asado',
        image: 'food5.png',
        price: 11000,
      ),
      ProductosModel(
        name: 'Food Tailandesa',
        image: 'food6.png',
        price: 14000,
      ),
      ProductosModel(
        name: 'Pizza Big',
        image: 'food7.png',
        price: 15000,
      ),
      ProductosModel(
        name: 'Empanas',
        image: 'food8.png',
        price: 18000,
      ),
      
      ProductosModel(
        name: 'Sandwich Malono',
        image: 'food9.png',
        price: 14000,
      ),
      ProductosModel(
        name: 'Tacos al Pastor',
        image: 'food10.png',
        price: 19000,
      ),
      ProductosModel(
        name: 'Coca-Cola 3Lt',
        image: 'food11.png',
        price: 5000,
      ),
      ProductosModel(
        name: 'Papas fritas',
        image: 'food12.png',
        price: 10000,
      ),
      ProductosModel(
        name: 'Salchipapa',
        image: 'food13.png',
        price: 18000,
      ),
      ProductosModel(
        name: 'Burritos Mexicanos',
        image: 'food14.png',
        price: 24000,
      ),
      ProductosModel(
        name: 'Limonada Mango Biche',
        image: 'food15.png',
        price: 8000,
      ),
      ProductosModel(
        name: 'Alitas BBQ x 6',
        image: 'food16.png',
        price: 20000,
      ),
    ];

    setState(() {
      _productosModel = list;
    });
  }
}
