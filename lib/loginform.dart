import 'package:flutter/material.dart';


class LoginForm extends StatefulWidget{
	@override
	LoginFormState createState() => LoginFormState();

}

InputDecoration txtDecoration(var str){

	return  InputDecoration(
		fillColor: Colors.white,
		filled: true,
		hintText: str,
		border: OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
		contentPadding: EdgeInsets.fromLTRB(15,15,10,8),
		errorStyle: TextStyle(color: Colors.yellow,fontWeight:FontWeight.bold)
	);
}



class LoginFormState extends State<LoginForm>{
	final _bottomSpace  = 10.0;
	final _formKey  = GlobalKey<FormState>();
	final emailExp = new RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)");
	final passTxtController  = TextEditingController();

	@override
	  void dispose() {
	    passTxtController.dispose();
	    super.dispose();
	  }

	_login(){

		if (_formKey.currentState.validate()) {
			//No auth			      
			Navigator.pushNamedAndRemoveUntil(context, '/',(Route<dynamic> route) => false);
		}

	}
	@override
	Widget build(BuildContext context){
		return Form(
			key: _formKey,
			child: Column(
				children: [
					SizedBox(
						height: 70
					),
					TextFormField(
						decoration : txtDecoration('Username'),
						validator: (value){
							if (value.isEmpty) {
						      return 'Enter your username';
						    }
						    return null;
						}
					),
					SizedBox(
						height: _bottomSpace
					),
					TextFormField(
						obscureText: true,
						decoration : txtDecoration('Password'),
						controller: passTxtController,
						validator: (value){
							
							if (value.isEmpty) {
						      return 'Enter your password';
						    }
						   
						    return null;
						}
					),
					SizedBox(
						height: _bottomSpace
					),
					ElevatedButton(
						child: Text('Login'),
						onPressed: _login
					),
					SizedBox(
						height: 50
					),
					Text('Don\'t have an account?',
						style: TextStyle(
							color: Colors.white
						)
					),
					ElevatedButton(
						child: Text('Register Now'),
						onPressed: (){
							Navigator.pushNamed(context, '/registration');
						}
					),

				]

			)//Column

		);//Form
	}
}