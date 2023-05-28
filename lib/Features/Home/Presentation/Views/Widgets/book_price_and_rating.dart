import 'package:bookly_app/Features/Home/Data/Repositories/Models/book_model.dart';
import 'package:flutter/material.dart';

class BookPriceAndRating extends StatelessWidget
{
  const BookPriceAndRating({
    super.key, required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Text('Free', style: TextStyle(fontSize: 20, color: Colors.white)),
        const SizedBox(width: 50),
        const Icon(Icons.star_rounded, color: Colors.yellow),
        const SizedBox(width: 5),
        Text(bookModel.volumeInfo.averageRating.toString() == 'null'? '0.0' : bookModel.volumeInfo.averageRating.toString(), style: const TextStyle(fontSize: 12)),
        const SizedBox(width: 5),
        Text(bookModel.volumeInfo.ratingsCount.toString() == 'null'? '(0)' : '(${bookModel.volumeInfo.ratingsCount.toString()})', style: const TextStyle(fontSize: 12, color: Color(0xFFC9C8CD)))
      ],
    );
  }
}
