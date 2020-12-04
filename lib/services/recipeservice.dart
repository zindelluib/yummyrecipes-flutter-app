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


Future<List<RecipeInfo>> getRecipes(String user,int page) async{
	var res = await http.get('${API_URL}/users/${user}/recipes?page=${page}');
	if(res.statusCode == 200){
		var decoded  = jsonDecode(res.body);
		return List<RecipeInfo>.from(decoded['data'].map((e) => RecipeInfo.fromJson(e)));
	}
	else{
		throw Exception('Error fetching recipes');
	}

}

Future<Recipe> deleteRecipe(id,token) async{
	var res  = await http.delete(
		'${API_URL}/recipes/${id}',
		headers: {HttpHeaders.authorizationHeader: 'Bearer ${token}' }

	);

	if(res.statusCode == 200){
		var decoded =  jsonDecode(res.body);
		return Recipe.fromJson(decoded);
	}
	else{
		throw Exception('Error deleting recipe');
	}
}
Future<Recipe> updateRecipe(id,data,token) async{

	var res  = await http.put(
		'${API_URL}/recipes/${id}',
		headers: {HttpHeaders.authorizationHeader: 'Bearer ${token}' },
		body:data

	);

	if(res.statusCode == 200){
		var decoded =  jsonDecode(res.body);
		return Recipe.fromJson(decoded);
	}
	else{
		throw Exception('Error updating recipe');
	}
}