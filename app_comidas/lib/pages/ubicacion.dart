import 'package:flutter/material.dart';

class Ubicacion extends StatefulWidget {
  final nombre;
  final imagen;

  const Ubicacion({this.nombre, this.imagen});

  @override
  _UbicacionState createState() => _UbicacionState();
}

class _UbicacionState extends State<Ubicacion> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(0xFFFF8853),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.map), onPressed: null, color: Colors.white),
        ],
        title: Text('Direccion',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 300.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                  top: 15.0,
                  right: 80.0,
                  bottom: 25,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFE6E4EB),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(65.0),
                            bottomRight: Radius.circular(65.0))),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width,
                  )),
              Positioned(
                  height: (MediaQuery.of(context).size.height / 4),
                  left: (MediaQuery.of(context).size.width / 6),
                  child: Hero(
                    tag: widget,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      height: 200.0,
                      width: 200.0,
                    ),
                  )),
              Positioned(
                  top: 50.0,
                  left: 25.0,
                  right: 25.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.nombre,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.black)),
                      Text('Gualcala 3 casa 162A',
                          style: new TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 26.0,
                          ))
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
