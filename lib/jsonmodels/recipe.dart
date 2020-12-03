class Recipe{
	final String message;
	final Map info;

	Recipe({this.message,this.info});
	factory Recipe.fromJson(Map<String,dynamic> json){
		return Recipe(
			message: json['message'],
			info: json['recipe']
		);
	}

}