import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/favoritesmodel.dart';


class FavoritesPage extends StatelessWidget{
	
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Favorites'),
				backgroundColor: Color.fromRGBO(56,142,60,1)
			),
			body:Consumer<FavoritesModel>(
				builder:(context,favorite,child){
					return ListView.builder(
						itemCount: favorite.favorites.length,
						itemBuilder:(context,index){
							return ListTile(
								title: Text(favorite.favorites[index])
							);
						}

					);
				}

			)

		);
	}
}