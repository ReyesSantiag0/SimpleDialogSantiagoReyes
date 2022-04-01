// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:simpledialogsantiagoreyes/Views/datos_personales.dart';
import 'package:simpledialogsantiagoreyes/Views/mis_contactos.dart';
import 'package:simpledialogsantiagoreyes/Views/mis_cursos.dart';
import 'package:simpledialogsantiagoreyes/Views/redes_sociales.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Center(
          child: Text("Simple Dialog App - Santiago Reyes"),
        ),
        elevation: 5.0,
      ),
      body: Center(
        child: FloatingActionButton(
          child: Icon(Icons.info),
          backgroundColor: Colors.pink,
          onPressed: () {
            _showDialog(context);
            // setState(() {});
          },
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("Seleccione una opción"),
            children: [
              ListTile(
                  title: Text("Mis Contactos"),
                  leading: Icon(Icons.contact_page),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView1()));
                  }),
              ListTile(
                  title: Text("Redes Sociales"),
                  leading: Icon(Icons.facebook),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView2()));
                  }),
              ListTile(
                  title: Text("Datos Personales"),
                  leading: Icon(Icons.person),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView3()));
                  }),
              ListTile(
                  title: Text("Mis Cursos"),
                  leading: Icon(Icons.class_),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView4()));
                  }),
            ],
          );
        });
  }
}
