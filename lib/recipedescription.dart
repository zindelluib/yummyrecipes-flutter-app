import 'package:flutter/material.dart';

class RecipeDescription extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		//Refer to https://api.flutter.dev/flutter/material/MaterialStateProperty-class.html
		Color getColor(Set<MaterialState> states) {
	      const Set<MaterialState> interactiveStates = <MaterialState>{
	        MaterialState.pressed,
	        MaterialState.hovered,
	        MaterialState.focused,
	      };
	      if (states.any(interactiveStates.contains)) {
	        return Color.fromRGBO(76,175,80,1);
	      }
	      return Color.fromRGBO(76,175,80,1);
	    }

		return Center(
			child: Column(
				children: [
					Text('Fried Chicken',
						style: TextStyle(
							fontSize: 17,
							fontWeight: FontWeight.bold
						)
					),
					Text('by Cookmaster'),
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text('Cooking Time: ',
								style: TextStyle(
									fontWeight: FontWeight.bold
								)
							),
							Text('20 min')
						]
					),//Row
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text('Category: ',
								style: TextStyle(
									fontWeight: FontWeight.bold
								)
							),
							Text('Main Dish')
						]
					),//Row
					Row(
						mainAxisSize: MainAxisSize.min,
						children: [
							for(int i=0;i<5;i++)
								Icon(Icons.star,color: Colors.yellow[700])
						]
					),//Stars
					// RaisedButton(
					// 	child: Text('View'),
					// 	color: Color.fromRGBO(76,175,80,1),
					// 	textColor: Colors.white,
					// 	onPressed:(){}
					// )
					ElevatedButton(
						child: Text('View'),
						style: ButtonStyle(
							backgroundColor: MaterialStateProperty.resolveWith(getColor)
						),
						onPressed:(){}
					)
				]

			)//Column
		);//Center

	}
	
}