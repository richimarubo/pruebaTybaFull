import 'package:flutter/material.dart';
import 'package:tengalo/src/models/restaurantes_model.dart';
import 'package:tengalo/src/search/search_delegate.dart';
import 'package:tengalo/src/share_prefs/preferencias_usuario.dart';
import 'package:tengalo/src/widgets/menu_widget.dart';
import 'package:tengalo/src/providers/restaurantes_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatefulWidget {

  static final String routeName = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final prefs = new PreferenciasUsuario();
  final restaurantesProvider = new RestaurantesProvider();

  @override
  void initState() {
    super.initState();
    prefs.ultimaPagina = HomePage.routeName;
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Paquelolleve', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30,
          color: Colors.white,
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
      ),
      backgroundColor: Colors.white,
      drawer: MenuWidget(),
      body: Stack(
        children: <Widget>[
          _crearFondo( context ),
          _listView( context ),
        ],
      ),
    );
  }

  Widget _listView(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SafeArea(
            child: Container(
              height: 30.0,
            ),
          ),

          Container(
            width: size.width * 100,
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.symmetric( vertical: 20.0, horizontal: 10.0 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox( height: 20.0 ),
                Row(
                  children: <Widget>[
                    SizedBox( width: 20.0,),
                    Text('Busca tu restaurante favorito', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black87)),
                    Spacer(),
                    IconButton(
                      icon: Icon( Icons.search ),
                      onPressed: () {
                        showSearch(
                          context: context, 
                          delegate: DataSearch(),
                        );
                      },
                    ),
                    SizedBox( width: 5.0,)
                  ],
                ),
                SizedBox( height: 20.0 ),
                _resultadosInt(),
              ],
            ),
          ),
          SizedBox( height: 70.0 )
        ],
      ),
    );
  }

  Widget _resultadosInt() {
     return FutureBuilder(
      future: restaurantesProvider.getRestaurantesInt(),
      builder: (BuildContext context, AsyncSnapshot<List<Restaurante>> snapshot) {

          if( snapshot.hasData ) {
            
            final restaurantes = snapshot.data;

            return Column(
              children: restaurantes.map( (restaurante) {
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      imageUrl: restaurante.imageUrl),
                    ),
                    title: Text(restaurante.name, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0)),
                    subtitle: Text( restaurante.address ),
                    trailing: Text( restaurante.city, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0)),
                    onTap: (){},
                  );
              }).toList()
            );
          } else {
            return Center(
              child: CircularProgressIndicator()
            );
          }
      },
    );
  }

  Widget _crearFondo(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final fondoModaro = Container(
      height: size.height * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF32026b),
      ),
    );

    return Stack(
      children: <Widget>[
        fondoModaro,
      ],
    );

  }
}