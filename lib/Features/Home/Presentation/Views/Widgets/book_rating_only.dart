import 'package:flutter/material.dart';

import '../../../Data/Repositories/Models/book_model.dart';

class BookRatingOnly extends StatelessWidget
{
  const BookRatingOnly({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star_rounded, color: Colors.yellow),
        const SizedBox(width: 5),
        Text(bookModel.volumeInfo.averageRating.toString() == 'null' ?
            '0.0' : bookModel.volumeInfo.averageRating.toString(), style: const TextStyle(fontSize: 12)),
        const SizedBox(width: 5),
        Text(bookModel.volumeInfo.ratingsCount.toString() == 'null' ?
        '(0)' : '(${bookModel.volumeInfo.ratingsCount.toString()})', style: const TextStyle(fontSize: 12, color: Color(0xFFC9C8CD)))
      ],
    );
  }
}
