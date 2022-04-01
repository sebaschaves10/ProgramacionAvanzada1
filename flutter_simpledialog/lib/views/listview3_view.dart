import 'package:flutter/material.dart';
import 'package:flutter_simpledialog/screens/simpledialog.dart';

class ListView3 extends StatefulWidget {
  @override
  _ListView3State createState() => _ListView3State();
}

class _ListView3State extends State<ListView3> {
  final num1 = 1;
  final num2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Datos Personales'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('\n'),
            Text('Te encuentras en mis datos personales', style: const TextStyle(fontSize: 20.0)),
            Text('\n'),            
            
          ],
        ),
      ),
    );
  }
}
