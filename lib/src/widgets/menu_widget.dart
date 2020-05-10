import 'package:flutter/material.dart';
import 'package:tengalo/src/pages/historial_page.dart';
import 'package:tengalo/src/pages/home_page.dart';
import 'package:tengalo/src/pages/login_page.dart';
import 'package:tengalo/src/share_prefs/preferencias_usuario.dart';

class MenuWidget extends StatelessWidget {

  final _prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 140.0,
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(_prefs.email, style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20.0),),
                    Text('Bienvenido', style: TextStyle( fontWeight: FontWeight.w300, fontSize: 16.0),)
                  ],
                ),
              ),
            ),

            ListTile(
              leading: Icon( Icons.apps, color: Color(0xFF43028e), ),
              title: Text('Inicio'),
              onTap: ()=> Navigator.pushReplacementNamed(context, HomePage.routeName ),
            ),

            ListTile(
              leading: Icon( Icons.people, color: Color(0xFF43028e), ),
              title: Text('Ingresar / Registrarse'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              },
            ),

            ListTile(
              leading: Icon( Icons.history, color: Color(0xFF43028e), ),
              title: Text('Historial'),
              onTap: ()=> Navigator.pushNamed(context, HistorialPage.routeName),
            ),

            ListTile(
              leading: Icon( Icons.subdirectory_arrow_left, color: Color(0xFF43028e), ),
              title: Text('Salir'),
              onTap: (){
                _prefs.email = '';
                _prefs.token = '';
                _prefs.ultimaPagina = LoginPage.routeName;
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              }
            ),
          ],
        ),
      ),
    );
  }
}