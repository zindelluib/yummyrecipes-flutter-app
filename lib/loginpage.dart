import 'package:flutter/material.dart';
import 'loginform.dart';

class LoginPage extends StatelessWidget{

	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Login'),
	          	backgroundColor: Color.fromRGBO(56,142,60,1)
			),
			body: Stack(
				children: [
					Container(
					    decoration: BoxDecoration(
						    	image: DecorationImage(image: AssetImage("assets/images/login.jpg"), 
						    	fit: BoxFit.fill
					    	)
					    )//BoxDecoration
					),//Container
					SingleChildScrollView(
						child: Container(
							child: LoginForm(),
							padding: EdgeInsets.all(12)
						)//Container
					)//SingleChildScrollView

				]
			)

		);

	}

}