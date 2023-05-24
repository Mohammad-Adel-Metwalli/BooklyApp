import 'package:flutter/material.dart';

class BookPriceAndRating extends StatelessWidget
{
  const BookPriceAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      children: [
        Text('19.99 €', style: TextStyle(fontSize: 20, color: Colors.white)),

        SizedBox(width: 50),

        Icon(Icons.star_rounded, color: Colors.yellow),

        SizedBox(width: 5),

        Text('4.8', style: TextStyle(fontSize: 12)),

        SizedBox(width: 5),

        Text('(2390)', style: TextStyle(fontSize: 12, color:  Color(0xFFC9C8CD)))
      ],
    );
  }
}