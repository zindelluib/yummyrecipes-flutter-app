import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/favoritesmodel.dart';

class RecipesPage extends StatelessWidget{
	final _recipes = List<String>.generate(100, (i) => "Recipe ${i+1}");
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Recipes'),
				backgroundColor: Color.fromRGBO(56,142,60,1)
			),
			body: Consumer<FavoritesModel>(
				builder: (context,favorite,child){
					print(favorite.favorites.length);
					return ListView.builder(
						itemCount: _recipes.length,
						itemBuilder: (context,index){
						return Card(
								child: ListTile(
									trailing: (favorite.favorites.contains(_recipes[index]))?IconButton(icon:Icon(Icons.favorite,color:Colors.red)):
									IconButton(icon:Icon(Icons.favorite)),
									leading: Image.asset('assets/images/friedchicken.jpg'),
									title: Text('${_recipes[index]}'),
									onTap:(){
										if(favorite.favorites.contains(_recipes[index]))
											favorite.remove(_recipes[index]);
										else
											favorite.add(_recipes[index]);
									}
								)
							);
						}

					);

				}
			)





				
		);
	}
}