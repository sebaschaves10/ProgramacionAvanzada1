import 'package:flutter/material.dart';
import 'package:flutter_simpledialog/screens/simpledialog.dart';

class ListView2 extends StatefulWidget {
  @override
  _ListView2State createState() => _ListView2State();
}

class _ListView2State extends State<ListView2> {
  final num1 = 1;
  final num2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redes Sociales'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('\n'),
            Text('Te encuentras en mis Redes Sociales', style: const TextStyle(fontSize: 20.0)),
            Text('\n'),            
            
          ],
        ),
      ),
    );
  }
}
