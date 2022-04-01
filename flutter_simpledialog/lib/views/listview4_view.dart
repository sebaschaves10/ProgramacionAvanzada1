import 'package:flutter/material.dart';
import 'package:flutter_simpledialog/screens/simpledialog.dart';

class ListView4 extends StatefulWidget {
  @override
  _ListView4State createState() => _ListView4State();
}

class _ListView4State extends State<ListView4> {
  final num1 = 1;
  final num2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Cursos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('\n'),
            Text('Te encuentras en mis cursos', style: const TextStyle(fontSize: 20.0)),
            Text('\n'),            
            
          ],
        ),
      ),
    );
  }
}
