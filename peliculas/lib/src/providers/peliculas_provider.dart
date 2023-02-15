import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:peliculas/src/models/pelicula_model.dart';

class PeliculasProvider{

  String _apiKey = "f7d322db0cdc63daedb41f769982f53d";
  String _url="api.themoviedb.org";
  String _languaje ="es-Es";


 Future<List<Pelicula>> getEnCines() async{

 final url = Uri.https(_url,'3/movie/now_playing',{
   'api_key': _apiKey,
    'languaje': _languaje
 });
       final resp = await http.get(url);
       final decodedData = json.decode(resp.body);

       print(decodedData['results']);
       
       final peliculas = new Peliculas.fromJsonList(decodedData['results']);

       print(peliculas.items[0].title);

       return peliculas.items;
 }
}