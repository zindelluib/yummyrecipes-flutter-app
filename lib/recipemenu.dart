import 'package:flutter/material.dart';


class RecipeMenu extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Row(
			children: [
				Column(
					children:[
						IconButton(
							icon: Icon(Icons.favorite),
							onPressed: () {}
						),//IconButton
						Text('Favorites')
					]
				),//Column
				Column(
					children:[
						IconButton(
							icon: Icon(Icons.create),
							onPressed: () {}
						),//IconButton
						Text('My Recipes')
					]
				),//Column
				Column(
					children:[
						IconButton(
							icon: Icon(Icons.search),
							onPressed: () {}
						),//IconButton
						Text('View All')
					]
				)

			]
		);//Row
	}
}