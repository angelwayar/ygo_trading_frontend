import 'package:flutter/material.dart';
import 'package:front_ygo/login.dart';
import 'package:front_ygo/publicaciones.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // appBar: AppBar(
      //   title: Text('Publicaciones de YGO'),
      // ),
      body: Login(),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     print('Pagina de post');
      //   },
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    ));
  }
}
