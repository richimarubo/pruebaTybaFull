import 'package:flutter/material.dart';
import 'package:tengalo/src/bloc/provider.dart';
import 'package:tengalo/src/pages/historial_page.dart';
import 'package:tengalo/src/pages/intro_pages.dart';
import 'package:tengalo/src/pages/home_page.dart';
import 'package:tengalo/src/pages/login_page.dart';
import 'package:tengalo/src/pages/registro_page.dart';
import 'package:tengalo/src/share_prefs/preferencias_usuario.dart';


 
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());

}
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Paquelolleve',
        initialRoute: prefs.ultimaPagina,
        routes: {
          HomePage.routeName     : ( BuildContext context ) => HomePage(),
          IntroPage.routeName    : ( BuildContext context ) => IntroPage(),
          LoginPage.routeName : ( BuildContext context ) => LoginPage(),
          RegistroPage.routeName : ( BuildContext context ) => RegistroPage(),
          HistorialPage.routeName : ( BuildContext context ) => HistorialPage(),
        },
        theme: ThemeData(
            primaryColor: Colors.white,
        ),
      ),
    );
  }
}