import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          const Expanded(
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5),
                      ),
                      hintText: 'Search'))),
          Positioned(
              top: 8,
              right: 10,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.tune),
              label: Text('Filter'),
            ),
          ),
        ],
      ),
    );
  }
}
