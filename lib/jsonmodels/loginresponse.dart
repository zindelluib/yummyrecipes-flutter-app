class LoginResponse{

	final String token;//access_token
	final String errMsg;//error
	final String user;
	LoginResponse({this.token,this.errMsg,this.user});

	factory LoginResponse.fromJson(Map<String,dynamic> json){
		return LoginResponse(
			token: json['access_token'],
			errMsg: json['error'],
			user: json['user']
		);
	}

}