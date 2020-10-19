import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget{
	final _recipes = List<String>.generate(100, (i) => "Recipe ${i+1}");
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Recipes'),
				backgroundColor: Color.fromRGBO(56,142,60,1)
			),
			body: ListView.builder(
				itemCount: _recipes.length,
				itemBuilder: (context,index){
					return Card(
						child: ListTile(
							leading: Image.asset('assets/images/friedchicken.jpg'),
							title: Text('${_recipes[index]}'),
							onTap:(){
								print('You tapped ${_recipes[index]}');
							}
						)
					);
				}

			)

		);
	}
}