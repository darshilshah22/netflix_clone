import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../utils/globals.dart';
import '../models/movie_model.dart';

Future<List<MovieModel>> fetchMovieData() async {
  const url = 'https://imdb-top-100-movies.p.rapidapi.com/';
  final response = await http.get(
    Uri.parse(url),
    headers: {
      'X-RapidAPI-Key': 'c440cb4f62msh5946f65302405f9p1a6ac7jsn346cd622257a',
      'X-RapidAPI-Host': 'imdb-top-100-movies.p.rapidapi.com'
    },
  );

  if (response.statusCode == 200) {
    List<dynamic> responseData = json.decode(response.body);
    movies = responseData.map((e) => MovieModel.fromJson(e)).toList();

    myList = movies.sublist(0, 10);
    trending = movies.sublist(10, 20);
    onlyOnNetflix = movies.sublist(20, 30);
    moreLikeThis = movies.sublist(30, 40);
    return movies;
  } else {
    throw Exception('Failed to load movie data');
  }
}
