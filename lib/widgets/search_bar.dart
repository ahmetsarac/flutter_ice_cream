import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        children: [
          
         TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(width: 5),
                      ),
                      hintText: 'Search')),
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
