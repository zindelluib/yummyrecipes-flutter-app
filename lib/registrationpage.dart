import 'package:flutter/material.dart';
import 'registrationform.dart';

class RegistrationPage extends StatelessWidget{

	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Registration'),
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
							child: RegistrationForm()
						)//Container
					)//SingleChildScrollView

				]
			)

		);

	}

}