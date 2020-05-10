import 'package:flutter/material.dart';
import 'package:tengalo/src/bloc/provider.dart';
import 'package:tengalo/src/providers/usuario_provider.dart';
import 'package:tengalo/src/share_prefs/preferencias_usuario.dart';
import 'package:tengalo/src/utils/utils.dart';

class LoginPage extends StatelessWidget {

  static final String routeName = 'login';
  final prefs = new PreferenciasUsuario();
  final usuarioProvider = new UsuarioProvider();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = LoginPage.routeName;

    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Paquelolleve', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _crearFondo( context ),
          _loginForm( context ),
        ],
      )
    );
  }

  Widget _loginForm(BuildContext context) {

    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SafeArea(
            child: Container(
              height: 150.0,
            ),
          ),

          Container(
            width: size.width * 100,
            margin: EdgeInsets.only(top: 30.0),
            padding: EdgeInsets.symmetric( vertical: 40.0, horizontal: 20.0 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              children: <Widget>[
                SizedBox( height: 20.0 ),
                Text('Ingresa a tu cuenta', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black87)),
                SizedBox( height: 30.0 ),
                _crearEmail( bloc ),
                SizedBox( height: 30.0 ),
                _crearPassword( bloc ),
                SizedBox( height: 50.0 ),
                _crearBoton( bloc )
              ],
            ),
          ),

          FlatButton(
            child: Text('Crear una nueva cuenta'),
            onPressed: ()=> Navigator.pushNamed(context, 'registro'),
          ),
          SizedBox( height: 70.0 )
        ],
      ),
    );


  }

  Widget _crearEmail(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),

        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon( Icons.alternate_email, color: Color(0xFFE72557)),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo electrónico',
            counterText: snapshot.data,
            errorText: snapshot.error
          ),
          onChanged: bloc.changeEmail,
        ),

      );


      },
    );


  }

  Widget _crearPassword(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),

          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon( Icons.lock_outline, color: Color(0xFFE72557)),
              labelText: 'Contraseña',
              counterText: snapshot.data,
              errorText: snapshot.error
            ),
            onChanged: bloc.changePassword,
          ),

        );

      },
    );


  }

  Widget _crearBoton( LoginBloc bloc) {

    // formValidStream
    // snapshot.hasData
    //  true ? algo si true : algo si false

    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 80.0, vertical: 15.0),
            child: Text('Ingresar', style: TextStyle(fontSize: 18.0),),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)
          ),
          elevation: 0.0,
          color: Color(0xFFE72557),
          textColor: Colors.white,
          onPressed: snapshot.hasData ? ()=> _login(bloc, context) : null
        );
      },
    );
  }

  _login(LoginBloc bloc, BuildContext context) async {

    Map info = await usuarioProvider.login(bloc.email, bloc.password);

    if ( info['ok'] ) {
       Navigator.pushReplacementNamed(context, 'home');
    } else {
      mostrarAlerta( context, info['mensaje'] );
    }
    
  }


  Widget _crearFondo(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final fondoModaro = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF32026b),
      ),
    );

    final circulo = Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120.0),
        color: Color.fromRGBO(231, 37, 87, 0.95)
      ),
    );

    final circuloTwo = Container(
      width: 250.0,
      height: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(180.0),
        color: Color.fromRGBO(77, 2, 164, 0.95)
      ),
    );

    return Stack(
      children: <Widget>[
        fondoModaro,
        Positioned( top: 120.0, left: 230.0, child: circuloTwo ),
        Positioned( top: -60.0, left: -30.0, child: circulo ),
        
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              SizedBox( height: 20.0, width: double.infinity ),
              Image.asset("assets/images/icon-paquelolleve.png", height: 90, width: 90,),
            ],
          ),
        )

      ],
    );

  }

}