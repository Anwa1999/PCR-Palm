import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition_app/Screens/details/SelectedCategoryPage.dart';
import 'package:nutrition_app/Screens/details/advice.dart';
import 'package:nutrition_app/Screens/home/home.dart';
import 'package:nutrition_app/constants.dart';
import 'package:nutrition_app/Screens/details/components/camera.dart';
import 'package:nutrition_app/Screens/home/components/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrition App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)),
      home: HomeScreen(
          //selectedCategory: Utils.getMockedCategories()[0],
          ),
    );
  }
}
