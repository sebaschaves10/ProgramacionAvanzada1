import 'package:flutter/material.dart';

class AlertDialogApp extends StatelessWidget {
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
            _alertDialog(context);
          },
        ),
      ),
    );
  }
}

//Ddefinimos la funcion AlertDialog
void _alertDialog(BuildContext context) {
  showDialog(
    //Widget que pérmite mostrar el simpleDialog
     context: context,
     builder: (BuildContext context) {
       return AlertDialog(
         title: Text("¿Pregunta?"),
         content: Text("¿Esta seguro de eliminar el contenido?"),
         actions: [
           FlatButton(
             child: Text("Sí"),
             onPressed: () {
               Navigator.pop(context);
             },
           ),

           FlatButton(
             child: Text("Cancelar"),
             onPressed: () {
               Navigator.pop(context);
             },
           )
         ],
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
         backgroundColor: Colors.cyan,
       );
     },
     barrierDismissible: false
  );
}
