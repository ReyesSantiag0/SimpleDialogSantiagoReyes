// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Mis Contactos'),
      ),
      body: ListView(children: [
        Text('Te encuentras en la página Mis Contactos',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 50, color: Colors.blue)),
      ]),
    );
  }
}
