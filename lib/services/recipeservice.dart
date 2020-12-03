import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../jsonmodels/recipe.dart';
import 'config.dart';
import 'dart:io';//HttpHeaders

Future<Recipe> addRecipe(var data,var token) async{
	var res  = await http.post('${API_URL}/recipes',
		headers: {HttpHeaders.authorizationHeader: 'Bearer ${token}' },
		body: data
	);
	if(res.statusCode == 201){
		return Recipe.fromJson(jsonDecode(res.body));
	}
	else{
		throw Exception('Error adding recipe');
	}
}