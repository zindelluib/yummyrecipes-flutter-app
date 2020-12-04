import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget{
	final recipeItem;
	final deleteAction;
	final editAction;
	const RecipeItem({
		this.recipeItem,
		this.deleteAction,
		this.editAction
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
								Text('${recipeItem.name}',style:TextStyle(fontWeight:FontWeight.bold)),
								Text('${recipeItem.created}')
							]
						)
					),
					Expanded(
						child: Row(
							mainAxisAlignment: MainAxisAlignment.start,
							children: [
								IconButton(icon: Icon(Icons.edit),
									tooltip:"Edit",
									onPressed: (){
										editAction();
									}
								),
								IconButton(icon: Icon(Icons.delete_forever),
									tooltip: "Delete",
									onPressed:()  async {
										var res = await showDeleteDialog(context,deleteAction,recipeItem);
										if(res!=null){
											Scaffold.of(context)..removeCurrentSnackBar()
											..removeCurrentSnackBar()
											 ..showSnackBar(SnackBar(content: Text('${res}')));
										}
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


showDeleteDialog(BuildContext context,deleteAction,recipeItem) async {
	return showDialog(
		context:context,
		builder:(BuildContext context){
			return AlertDialog(
				title: Text('Deleting Recipe'),
				content: Text('Do you want to delete ${recipeItem.name}?'),
				actions: [
					TextButton(
						child: Text('Delete'),
						onPressed:() async {
							var delRes  =await deleteAction(recipeItem);
							Navigator.of(context).pop(delRes.message);
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