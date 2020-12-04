import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/authmodel.dart';

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
								onPressed: () {
									Provider.of<AuthModel>(context,listen:false).logout();	
									Navigator.pushNamedAndRemoveUntil(context, '/login',(Route<dynamic> route) => false);
								}
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