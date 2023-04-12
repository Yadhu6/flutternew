import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutternew/Statemanagement/Providerapp/Model/moviemodelclass.dart';

final List<Movie> movieList = List.generate(50, (index) => Movie(title: "Movie $index",
 time: "${Random().nextInt(100) + 60} minutes"));

class MovieProvider with ChangeNotifier{

  final List<Movie> _movies  =movieList;
  List<Movie> get movies => _movies; // get all the movies from home page

final List<Movie> _myList = [];
List<Movie> get myList => _myList;

void addToList(Movie movie){
  _myList.add(movie);
  notifyListeners();
}

void removeFromList(Movie movie){
  _myList.remove(movie);
  notifyListeners();
}


}