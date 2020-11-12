import 'package:flutter/material.dart';
import 'homepage.dart';
import 'loginpage.dart';
import 'recipespage.dart';
import 'registrationpage.dart';
import 'favoritespage.dart';
import 'models/favoritesmodel.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(YummyRecipesApp());
}


class YummyRecipesApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => FavoritesModel(),
      child: MaterialApp(
        title: 'Yummy Recipes',
        initialRoute: '/',
        routes:{
          '/' :(context) => HomePage(),
          '/recipes': (context) => RecipesPage(),
          '/login' : (context) => LoginPage(),
          '/registration' :(context) => RegistrationPage(),
          '/favorites':(context) => FavoritesPage()
        }
        
      )
    );//MaterialApp
  }


}
