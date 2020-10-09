import 'package:flutter/material.dart';

class AccountMenu extends StatelessWidget{

	Widget build(BuildContext context){
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				Padding(
					child: Column(
						children:[
							IconButton(
								icon: Icon(Icons.settings),
								onPressed: () {}
							),//IconButton
							Text('Settings')
						]
					),
					padding: EdgeInsets.only(right:5)

				),//Column
				Padding(
					child: Column(
						children:[
							IconButton(
								icon: Icon(Icons.close),
								onPressed: () {}
							),//IconButton
							Text('Logout')
						]
					),
					padding: EdgeInsets.only(left:5)
				)
			]
		);//Row

	}

}