import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/favoritesmodel.dart';
import 'recipeitem.dart';
class MyRecipesPage extends StatefulWidget{
	_MyRecipesPageState createState() => _MyRecipesPageState();
}

class _MyRecipesPageState extends State<MyRecipesPage>{
	final _recipes = List<String>.generate(100, (i) => "Recipe ${i+1}");
	_removeRecipe(int index){

		print(index);
	}
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('My Recipes'),
				backgroundColor: Color.fromRGBO(56,142,60,1),

			),
			body: ListView.builder(
				padding: const EdgeInsets.all(10.0),
				itemCount: _recipes.length,
				itemBuilder: (context,index){
					return Card(
						child: RecipeItem(
							id: index,
							name: _recipes[index],
							date_created: 'June 20,2020',
							deleteAction: _removeRecipe,
						)
					);
				}//itemBuilder
			),
			floatingActionButton:FloatingActionButton(
					onPressed:(){
						Navigator.pushNamed(context,'/add-recipe');
					},
					backgroundColor:Color.fromRGBO(56,142,60,1),
					child: Icon(Icons.add)
			)	
		);//Scaffold
	}
}

