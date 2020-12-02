import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget{
	final int id;
	final String name;
	final String date_created;
	final deleteAction;
	const RecipeItem({
		this.id,
		this.name,
		this.date_created,
		this.deleteAction
	});

	Widget build(BuildContext context){
		return Padding(
			child :Row(
				children: [

					Expanded(
						child: Image.asset('assets/images/friedchicken.jpg'),
					),
					SizedBox(width:3),
					Expanded(
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Text('${name}',style:TextStyle(fontWeight:FontWeight.bold)),
								Text('${date_created}')
							]
						)
					),
					Expanded(
						child: Row(
							mainAxisAlignment: MainAxisAlignment.start,
							children: [
								IconButton(icon: Icon(Icons.edit),tooltip:"Edit"),
								IconButton(icon: Icon(Icons.delete_forever),
									tooltip: "Delete",
									onPressed:(){
										showDeleteDialog(context,deleteAction,id,name);
									}
								),
							]
						)
					)

				]
			),
			padding: const EdgeInsets.symmetric(vertical: 5.0)

		);
	}
}


showDeleteDialog(BuildContext context,deleteAction,id,name){
	showDialog(
		context:context,
		builder:(BuildContext context){
			return AlertDialog(
				title: Text('Deleting Recipe'),
				content: Text('Do you want to delete $name?'),
				actions: [
					TextButton(
						child: Text('Delete'),
						onPressed:(){
							deleteAction(id);
							Navigator.of(context).pop();
						}
					),
					TextButton(
						child: Text('Cancel'),
						onPressed:(){
							Navigator.of(context).pop();
						}
					)
				]

			);
		}
	);	
}