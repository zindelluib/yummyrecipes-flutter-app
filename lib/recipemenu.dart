import 'package:flutter/material.dart';


class RecipeMenu extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				Padding(
					child: Column(
						children:[
							IconButton(
								icon: Icon(Icons.favorite,color: Colors.red),
								onPressed: () {}
							),//IconButton
							Text('Favorites')
						]
					),
					padding: EdgeInsets.only(right:10)

				),//Column
				Column(
					children:[
						IconButton(
							icon: Icon(Icons.create,color:Colors.green),
							onPressed: () {}
						),//IconButton
						Text('My Recipes')
					]
				),//Column
				Padding(
					child: Column(
						children:[
							IconButton(
								icon: Icon(Icons.search,color:Colors.orange),
								onPressed: () {
									Navigator.pushNamed(context, '/recipes');
								}
							),//IconButton
							Text('View All')
						]
					),
					padding: EdgeInsets.only(left:10)

				)

			]
		);//Row
	}
}