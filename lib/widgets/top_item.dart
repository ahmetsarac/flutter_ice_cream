import 'package:flutter/material.dart';

class TopItem extends StatelessWidget {
  TopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            'Top Item',
            style: TextStyle(fontSize: 25),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: TopIceCreamItem(itemName: 'Sherbet flavour', itemDesc: 'With strawberry jam', price: 14.60, color: Colors.blue,),
            ),
            SizedBox(width: 10),
            Flexible(
              child: TopIceCreamItem(itemName: 'Sherbet flavour', itemDesc: 'With strawberry jam', price: 14.60, color: Colors.pink,),
            ),
          ],
        ),
      ],
    );
  }
}

class TopIceCreamItem extends StatelessWidget {
  final String itemName;
  final String itemDesc;
  final double price;
  final MaterialColor color;

  const TopIceCreamItem({
    Key? key, required this.itemDesc, required this.itemName, required this.price, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color[200],
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 100, color: Colors.grey[300]),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '$itemName',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Text(
            '$itemDesc',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$$price', style: TextStyle(fontSize: 18)),
                  Container(decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(50)), child: IconButton(icon: Icon(Icons.add), onPressed:(){}, color: Colors.white)),
                ],
                ),
          ),
        ],
      ),
    );
  }
}
