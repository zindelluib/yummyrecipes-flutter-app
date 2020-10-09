
import 'package:flutter/material.dart';
import 'recipedescription.dart';
import 'recipemenu.dart';
import 'accountmenu.dart';
class HomePage extends StatelessWidget{

	@override
	Widget build(BuildContext context){
		return Scaffold(
	        appBar:AppBar(
	          title: Text('Yummy Recipes')
	        ),
	        body: Container(
	        	child: Column(
	        		crossAxisAlignment: CrossAxisAlignment.start,
	        		children: [
	        			Text('Recipe of the Day'),
	        			Image.asset('assets/images/friedchicken.jpg'),
	        			RecipeDescription(),
	        			Text('Recipes'),
	        			RecipeMenu(),
	        			Text('Account'),
	        			AccountMenu()
	        		]
	        	)//Column
	        )//Container
        );
	}

}