import 'package:flutter/material.dart';
import 'recipedescription.dart';
import 'recipemenu.dart';
import 'accountmenu.dart';
import 'package:provider/provider.dart';
import 'models/authmodel.dart';
import 'loginpage.dart';
class HomePage extends StatelessWidget{

	@override
	Widget build(BuildContext context){
		if(!Provider.of<AuthModel>(context,listen:false).isLoggedIn){
			return LoginPage();
		}
		return Scaffold(
	        appBar:AppBar(
	          title: Text('Yummy Recipes'),
	          backgroundColor: Color.fromRGBO(56,142,60,1)
	        ),
		        body:SingleChildScrollView(
		        child:Container(
		        	padding: EdgeInsets.all(15), 
		        	child: Column(
		        		crossAxisAlignment: CrossAxisAlignment.start,
		        		children: [
		        			Container(
		        				padding: EdgeInsets.all(9),
		        				width: double.infinity,
		        				child: Text('Recipe of the Day',
		        					style:TextStyle(
		        						color:Colors.white,
		        						fontSize: 20,
		        						fontWeight: FontWeight.bold
		        					)
		        				),
		        				color: Color.fromRGBO(255,87,34,1)
		        			),
		        			Padding(
		        				child: Image.asset('assets/images/friedchicken.jpg'),
		        				padding: EdgeInsets.only(bottom :9)
		        			),
		        			RecipeDescription(),
		        			Padding(
		        				child: Text('Recipes',
			        				style: TextStyle(
			        					fontWeight: FontWeight.bold,
			        					fontSize: 18	
			        				)
			        			),
			        			padding: EdgeInsets.only(left:12,bottom:7)
		        			),
		        			RecipeMenu(),
		        			Padding(
		        				child: Text('Account',
			        				style: TextStyle(
			        					fontWeight: FontWeight.bold,
			        					fontSize: 18	
			        				)
			        			),
			        			padding: EdgeInsets.only(left:12,bottom:7,top:7)
		        			),
		        			AccountMenu()
		        		]
		        	)//Column
		        )//Container
		    )
        );
	}

}