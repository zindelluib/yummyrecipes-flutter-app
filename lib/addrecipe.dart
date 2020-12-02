import 'package:flutter/material.dart';

class AddRecipe extends StatefulWidget{
	_AddRecipeState createState() => _AddRecipeState();

}

class _AddRecipeState extends State<AddRecipe>{
	final _formKey  = GlobalKey<FormState>();
	final _cats = [
		{
			'id' : 'main-menu',
			'name' : 'Main Dish'
		},
		{
			'id' : 'appetizer',
			'name' : 'Appetizer'
		}
	];
	var selected;
	initState(){
		selected =  _cats[0];
		super.initState();
	}
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Add New Recipe'),
				backgroundColor: Color.fromRGBO(56,142,60,1),
			),
			body:Form(
				key: _formKey,
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						TextFormField(
							decoration:InputDecoration(
								hintText: 'Recipe Name'
							)
						),
						SizedBox(
							height:10
						),
						TextFormField(
							//Multiline
							maxLines: null,
    						keyboardType: TextInputType.multiline,
							decoration:InputDecoration(
								hintText: 'Description'
							)
						),
						SizedBox(
							height:20
						),
						Text('Category: ',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15)),
						DropdownButton<Map>(
							isExpanded: true,
							elevation: 16,
							hint: Text('Choose a Category:'),
							value:selected,
							items: _cats.map((data){
								return DropdownMenuItem<Map>(
									value: data,
									child: Text(data['name'])
								);

							}).toList(),
							onChanged:(val){
								setState((){
										selected = val;
								});
							}
						)

					]

				)

			),
			floatingActionButton:FloatingActionButton.extended(
				icon: Icon(Icons.save),
				label: Text('Save'),
				backgroundColor:Color.fromRGBO(56,142,60,1),
				onPressed:(){

				}
			)

		);

	}

}