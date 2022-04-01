import 'package:flutter/material.dart';
import 'package:flutter_simpledialog/views/listview1_view.dart';
import 'package:flutter_simpledialog/views/listview2_view.dart';
import 'package:flutter_simpledialog/views/listview3_view.dart';
import 'package:flutter_simpledialog/views/listview4_view.dart';

class SimpleDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog App"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Ver opciones"),
          onPressed: () {
            _showDialog(context);
          },
        ),
      ),
    );
  }

  void _showDialog(BuildContext context)
  { 
    showDialog( 
      //Widget que pérmite mostrar el simpleDialog
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog( //Es el widget con las caracteristicas y propiedades del dialgo
          title: Text("Seleccione una opcion"),
          children: [
            ListTile(
              title: Text("Contactos"),
              leading: Icon(Icons.contacts),
              onTap: () {
              Navigator.push(context, 
              
              MaterialPageRoute(builder: (context) => ListView1()
              ));
             },
            ), 

            ListTile(
              title: Text("Redes Sociales"),
              leading: Icon(Icons.alternate_email),
               onTap: () {
              Navigator.push(context, 
              
              MaterialPageRoute(builder: (context) => ListView2()
              ));
             },
            ), 

            ListTile(
              title: Text("Datos Personales"),
              leading: Icon(Icons.account_circle),
               onTap: () {
              Navigator.push(context, 
              
              MaterialPageRoute(builder: (context) => ListView3()
              ));
             },
            ), 

            ListTile(
              title: Text("Mis Cursos"),
              leading: Icon(Icons.book),
               onTap: () {
              Navigator.push(context, 
              
              MaterialPageRoute(builder: (context) => ListView4()
              ));
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        );
      },
      barrierDismissible: false
    );
  }
}
