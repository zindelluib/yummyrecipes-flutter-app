import 'package:flutter/material.dart';

class AccountMenu extends StatelessWidget{

	Widget build(BuildContext context){
		return Row(
			children: [
				Column(
					children:[
						IconButton(
							icon: Icon(Icons.settings),
							onPressed: () {}
						),//IconButton
						Text('Settings')
					]
				),//Column
				Column(
					children:[
						IconButton(
							icon: Icon(Icons.close),
							onPressed: () {}
						),//IconButton
						Text('Logout')
					]
				)
			]
		);//Row

	}

}