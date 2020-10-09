import 'package:flutter/material.dart';

class RecipeDescription extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Center(
			child: Column(
				children: [
					Text('Fried Chicken'),
					Text('by Cookmaster'),
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text('Cooking Time: '),
							Text('20 min')
						]
					),//Row
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text('Category: '),
							Text('Main Dish')
						]
					),//Row
					Row(
						mainAxisSize: MainAxisSize.min,
						children: [
							for(int i=0;i<5;i++)
								Icon(Icons.star)
						]
					),//Stars
					RaisedButton(
						child: Text('View'),
						onPressed:(){}
					)
				]

			)//Column
		);//Center

	}
	
}