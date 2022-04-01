
import 'package:dialogsapp/screens/simpledialog.dart';
//import 'package:dialogsapp/screens/alertdialog.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/":(BuildContext context) => SimpleDialogApp(),
        //"/":(BuildContext context) => AlertDialogApp(),
        //"alertd":(BuildContext context) => AlertDialogApp(),
      },
    );
  }
}
