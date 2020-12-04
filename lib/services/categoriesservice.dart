import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../jsonmodels/categories.dart';
import 'config.dart';

Future<Categories> getCategories() async{
	var res  = await http.get('${API_URL}/categories');

	if(res.statusCode == 200){
		return Categories.fromJson(jsonDecode(res.body));
	}
	else{
		throw Exception('An error occured');
	}
}