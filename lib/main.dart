import 'package:flutter/material.dart';
//import 'homepage.dart';
import 'registrationpage.dart';
void main() {
  runApp(YummyRecipesApp());
}


class YummyRecipesApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Yummy Recipes',
      //home: HomePage()
      home: RegistrationPage()
    );//MaterialApp
  }


}
