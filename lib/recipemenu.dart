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
								onPressed: () {
									Navigator.pushNamed(context,'/favorites');
								}
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
							onPressed: () {
								Navigator.pushNamed(context, '/my-recipes');
							}
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