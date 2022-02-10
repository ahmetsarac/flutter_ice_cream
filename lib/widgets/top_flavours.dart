import 'package:flutter/material.dart';

class TopFlavours extends StatelessWidget {
  const TopFlavours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Top Flavours',
          style: TextStyle(fontSize: 25),
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            color: Color(0xFFFFD8DC),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      color: Colors.grey[400],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Vanilla Ice Cream',
                              style: TextStyle(fontSize: 21)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(color: Colors.yellow[600],
                                      borderRadius: BorderRadius.circular(10.0)),
                                child: Text(
                                  '1 KG',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Text.rich(
                                TextSpan(children: [
                                  WidgetSpan(child: Icon(Icons.star, color: Colors.yellow[600])),
                                  TextSpan(text: '4.9', style: TextStyle(fontSize: 18)),
                                ]),
                              ),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$14,60', style: TextStyle(fontSize: 18)),
                                Container(decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(50.0)), child: IconButton(icon: Icon(Icons.add), onPressed: (){}, color: Colors.white)),
                              ],
                              ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
