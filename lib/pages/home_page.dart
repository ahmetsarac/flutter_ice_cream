import 'package:flutter/material.dart';

import '../widgets/search_bar.dart';
import '../widgets/top_flavours.dart';
import '../widgets/top_section.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopSection(),
              SearchBar(),
              TopFlavours(),
            ],
              ),
        ),
      ),
    ); 
  }
}
