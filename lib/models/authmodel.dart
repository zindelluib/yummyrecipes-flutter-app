import 'package:flutter/material.dart';

class AuthModel extends ChangeNotifier{

	bool _isLoggedIn = false;
	String _token = "";
	String _user = "";

	bool get isLoggedIn => _isLoggedIn;
	String get token => _token;
	String get user => _user;
	
	void login(String user,String token){
		_isLoggedIn = true;
		_token  = token;
		_user = user;
		//notifyListeners();
	}


	void logout(){
		_isLoggedIn = false;
		_token  = "";
		_user = "";

	}
}