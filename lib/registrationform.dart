import 'package:flutter/material.dart';


class RegistrationForm extends StatefulWidget{
	@override
	RegistrationFormState createState() => RegistrationFormState();

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



class RegistrationFormState extends State<RegistrationForm>{
	final _bottomSpace  = 12.0;
	final _formKey  = GlobalKey<FormState>();
	bool _isAccepted  = false;
	final emailExp = new RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)");
	final passTxtController  = TextEditingController();
	final fnameTxtController = TextEditingController();
	final lnameTxtController = TextEditingController();
	final emailTxtController = TextEditingController();
	final confirmTxtController = TextEditingController();
	@override
	  void dispose() {
	    passTxtController.dispose();
		fnameTxtController.dispose();
		lnameTxtController.dispose();
		emailTxtController.dispose();
		confirmTxtController.dispose();
	    super.dispose();
	  }

	_register(){

		if (_formKey.currentState.validate()) {
						      
			Scaffold
				.of(context)
				.showSnackBar(SnackBar(content: Text('Saving...')));
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
						decoration:txtDecoration('First Name'),
						validator: (value){
							if (value.isEmpty) {
						      return 'First name is Required';
						    }
						    return null;
						}
					),
					SizedBox(
						height: _bottomSpace
					),
					TextFormField(
						decoration: txtDecoration('Last Name'),
						validator: (value){
							if (value.isEmpty) {
						      return 'Last name is Required';
						    }
						    return null;
						}
					),
					SizedBox(
						height: _bottomSpace
					),
					/*TextFormField(
						decoration : txtDecoration('Username'),
						validator: (value){
							if (value.isEmpty) {
						      return 'Username is Required';
						    }
						    return null;
						}
					),
					SizedBox(
						height: _bottomSpace
					),*/
					TextFormField(
						decoration : txtDecoration('Email'),
						validator: (value){
							if (value.isEmpty)
						      return 'Email is Required';
						   	else if(emailExp.hasMatch(value) == false)
						   		return 'Invalid Email';

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
						      return 'Password is Required';
						    }
						    else if(value.length < 8)
						    	return 'Password must be at least 8 characters';
						    return null;
						}
					),
					SizedBox(
						height: _bottomSpace
					),
					TextFormField(
						obscureText: true,
						decoration : txtDecoration('Confirm Password'),
						validator: (value){
						
							if (value.isEmpty) 
						     	return 'Please confirm your password';
						    else if(value != passTxtController.text)
						    	return 'Password did not match';
						    	
						    return null;
						}
					),
					SizedBox(
						height: 15
					),
					Row(
						children: [
							Checkbox(
								value: _isAccepted,
								onChanged: (isAccepted){
									setState((){
										_isAccepted   = isAccepted;
									});
								}

							),
							Text('By clicking Register, you agree to our terms\n and data policy',
								style : TextStyle(color: Colors.white)
							)

						]
					),
					ElevatedButton(
						child: Text('Register'),
						onPressed: _isAccepted?_register:null
					)

				]

			)//Column

		);//Form
	}
}