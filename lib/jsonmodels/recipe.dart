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

class RecipeInfo{
	final String id;
	final String name;
	final String category;
	final String description;
	final String created;
	RecipeInfo({
		this.id,
		this.name,
		this.category,
		this.description,
		this.created
		
	});
	factory RecipeInfo.fromJson(Map<String,dynamic> json){
		return RecipeInfo(
			id: json['id'],
			name: json['name'],
			category: json['category_id'],
			description: json['description'],
			created: (json['created_at'] == null)?"" : DateTime.parse(json['created_at']).toString()
		);
	}

}