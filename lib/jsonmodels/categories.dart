
class Categories{
	final List categories;
	Categories({this.categories});

	factory Categories.fromJson(Map<String,dynamic> json){
		return Categories(
			categories: json['categories']
		);
	}	

}