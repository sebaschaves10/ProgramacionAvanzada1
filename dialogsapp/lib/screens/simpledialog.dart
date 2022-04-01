import 'package:flutter/material.dart';

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
              title: Text("Crear"),
              leading: Icon(Icons.create),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text("Editar"),
              leading: Icon(Icons.save),
              onTap: () {
                Navigator.pop(context);
              },
            ), 

            ListTile(
              title: Text("Eliminar"),
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

