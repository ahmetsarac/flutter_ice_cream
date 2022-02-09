import 'package:flutter/material.dart';
import './pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const IceCreamApp());
}

class IceCreamApp extends StatelessWidget{
  const IceCreamApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
         primaryColor: Colors.pink,
         primarySwatch: Colors.pink,
         fontFamily: GoogleFonts.indieFlower().fontFamily,
      ),
      title: 'Ice Cream App',
      home: const Scaffold(
          body: HomePage(),),
    );
  }
}
