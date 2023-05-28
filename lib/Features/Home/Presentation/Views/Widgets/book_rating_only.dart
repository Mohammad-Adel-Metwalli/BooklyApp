import 'package:flutter/material.dart';

class BookRatingOnly extends StatelessWidget {
  const BookRatingOnly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_rounded, color: Colors.yellow),
        SizedBox(width: 5),
        Text('4.8', style: TextStyle(fontSize: 12)),
        SizedBox(width: 5),
        Text('(2390)', style: TextStyle(fontSize: 12, color: Color(0xFFC9C8CD)))
      ],
    );
  }
}
