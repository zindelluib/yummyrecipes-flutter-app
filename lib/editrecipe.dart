import 'package:flutter/material.dart';
import 'services/categoriesservice.dart';
import 'jsonmodels/categories.dart';
import 'services/recipeservice.dart';
import 'jsonmodels/recipe.dart';
import 'package:provider/provider.dart';
import 'models/authmodel.dart';
class EditRecipe extends StatefulWidget{
	EditRecipe({this.recipeInfo});
	final recipeInfo;

	_EditRecipeState createState() => _EditRecipeState();

}

class _EditRecipeState extends State<EditRecipe>{
	final _formKey  = GlobalKey<FormState>();
	Future<Categories> _catFuture;
	var _selectedCat;
	String _name,_description;
	var _selectedCatID;
	final _recipeCtrl  = TextEditingController();
	final  _descCtrl  = TextEditingController();
	
	
	
	@override
	initState(){
		super.initState();
		_catFuture =  getCategories();
		_recipeCtrl.text  = widget.recipeInfo.name;
		_descCtrl.text  = widget.recipeInfo.description;
		_selectedCat  = widget.recipeInfo.category;

	}

	@override
	void dispose() {
	    // Clean up the controller when the widget is disposed.
	    _recipeCtrl.dispose();
	    _descCtrl.dispose();
	    super.dispose();
	  }

	Widget build(BuildContext context){
	
		
		return Scaffold(
			appBar: AppBar(
				title: Text('Edit Recipe'),
				backgroundColor: Color.fromRGBO(56,142,60,1),
			),
			body:Form(
				key: _formKey,
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						TextFormField(
							controller: _recipeCtrl,
							decoration:InputDecoration(
								hintText: 'Recipe Name'
							)
						),
						SizedBox(
							height:10
						),
						TextFormField(
							//Multiline
							controller: _descCtrl,
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
						FutureBuilder<Categories>(
							future: _catFuture,
							builder: (context,snapshot){
								if(snapshot.hasError){
									return Text('Cannot load categories');
								}else if(snapshot.hasData){
									var categories  = snapshot.data.categories;
							
									var i = categories.indexWhere((e) => e['id'] == widget.recipeInfo.category);
									var catIDS  = List<String>.from(categories.map(
										(e)=> e['id']
									));
									print('${widget.recipeInfo.category}');
									return DropdownButton<String>(
										isExpanded: true,
										elevation: 16,
										hint: Text('Choose a Category:'),
										value:_selectedCat,
										items: categories.map((data){
											
											return DropdownMenuItem<String>(
												value: data['id'],
												child: Text('${data['name']}')
											);

										}).toList(),
										onChanged:(val){
											print('${val}');
											setState((){
													_selectedCat = val;

													
											});
										}
									);
								}
								return Text('Loading categories...');

							}
						)

					]

				)

			),
			floatingActionButton:FloatingActionButton.extended(
				icon: Icon(Icons.save),
				label: Text('Save'),
				backgroundColor:Color.fromRGBO(56,142,60,1),
				onPressed:() async {
					Map data  = {
						'name': _recipeCtrl.text,
						'description': _descCtrl.text,
						'category':_selectedCat
					};
					print('${data}');
					var token = Provider.of<AuthModel>(context, listen: false).token;
					print('${data}');
					var recipeRes  = await updateRecipe(widget.recipeInfo.id,data,token);
					Navigator.pop(context,recipeRes.message);

				}
			)

		);

	}

}