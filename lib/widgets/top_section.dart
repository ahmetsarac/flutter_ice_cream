import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hey Emma', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('What flavor do you like to eat?', style: TextStyle(color: Colors.grey[600])),
          ],
        ),
        CircleAvatar(radius: 28, backgroundColor: Theme.of(context).primaryColor),
      ],
    );
  }
}
