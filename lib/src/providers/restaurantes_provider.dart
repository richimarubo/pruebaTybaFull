import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:tengalo/src/models/restaurantes_model.dart';


class RestaurantesProvider {

  String _url = 'https://opentable.herokuapp.com/api/restaurants';
  //List<Restaurante> _populares = new List();

  final _popularesStreamController = StreamController<List<Restaurante>>.broadcast();

  Function(List<Restaurante>) get popularesSink => _popularesStreamController.sink.add;
  Stream<List<Restaurante>> get popularesStream => _popularesStreamController.stream;

  void disposeStreams() {
    _popularesStreamController?.close();
  }

  Future<List<Restaurante>> _procesarRespuesta(Uri url) async {
    final resp = await http.get( url );
    final decodedData = json.decode(resp.body);
    print(resp.body);
    final restaurantes = new Restaurantes.fromJsonList(decodedData['restaurants']);
    return restaurantes.items;
  }

  Future<List<Restaurante>> getRestaurantesInt() async {
    var url = Uri.parse(_url);
    url = url.replace(query: 'city=chicago');
    return await _procesarRespuesta(url);
  }

  Future<List<Restaurante>> buscarRestaurante( String query ) async {
    var url = Uri.parse(_url);
    url = url.replace(query: 'city=$query');
    return await _procesarRespuesta(url);
  }

}