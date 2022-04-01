import 'package:flutter/material.dart';
import 'package:flutter_simpledialog/screens/simpledialog.dart';

class ListView1 extends StatefulWidget {
  @override
  _ListView1State createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
  final num1 = 1;
  final num2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('\n'),
            Text('Te encuentras en mis contactos', style: const TextStyle(fontSize: 20.0)),
            Text('\n'),            
            
          ],
        ),
      ),
    );
  }
}
