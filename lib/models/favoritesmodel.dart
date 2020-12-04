import 'package:flutter/material.dart';

class FavoritesModel extends ChangeNotifier{
	List<String> _favorites = [];

	List<String> get favorites => _favorites;

	void add(String recipe){
		_favorites.add(recipe);
		notifyListeners();
	}

	void remove(String recipe){
		_favorites.removeWhere((el)=> el == recipe);
		notifyListeners();
	}
}