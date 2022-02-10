import 'package:flutter/material.dart';

class PopularIceCream extends StatelessWidget {
  PopularIceCream({Key? key}) : super(key: key);

  final List<String> iceCreamNames = ['Vanilla', 'Neopolitan', 'Cake', 'Chocolate', 'Mango', 'Lemon'];
  final List<MaterialColor> iceCreamColors = [Colors.pink, Colors.yellow, Colors.teal, Colors.grey, Colors.red, Colors.blue];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Popular Ice Cream',
          style: TextStyle(fontSize: 25),
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            height: 60,
          child: ListView.separated(
             separatorBuilder: (context, index){
               return const SizedBox(width: 10);
             } ,
              scrollDirection: Axis.horizontal,
              itemCount: iceCreamNames.length,
              itemBuilder: (context, index){
                return IceCreamItem(iceCreamName: iceCreamNames[index], iceCreamColor: iceCreamColors[index]);
              },
          ),
        ),
      ],
    );
  }
}

class IceCreamItem extends StatelessWidget {

  final String iceCreamName;
  final MaterialColor iceCreamColor;

  const IceCreamItem({
    Key? key, required this.iceCreamName, required this.iceCreamColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Container(width: 60, height: 60, color: iceCreamColor),
      Container(padding: const EdgeInsets.all(20.0), height: 60, color: iceCreamColor[100], child: Center(child: Text(iceCreamName, style: TextStyle(fontSize: 15))),),
    ],);
  }
}
