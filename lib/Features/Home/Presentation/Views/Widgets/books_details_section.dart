import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants.dart';
import '../../../Data/Repositories/Models/book_model.dart';
import 'book_rating_only.dart';
import 'books_action.dart';
import 'custom_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .2),
        child: CustomBookImage(
          imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
        ),
      ),
      const SizedBox(height: 26),
      Text(bookModel.volumeInfo.title.toString(),
          textAlign: TextAlign.center,
          style: GoogleFonts.doHyeon(textStyle: const TextStyle(fontSize: 30))),
      Text(bookModel.volumeInfo.authors![0],
          maxLines: 2,
          style: GoogleFonts.doHyeon(
              textStyle: const TextStyle(fontSize: 20, color: greyColor))),
      const SizedBox(height: 10),
      BookRatingOnly(bookModel: bookModel),
      const SizedBox(height: 29),
      BooksAction(bookModel: bookModel),
    ]);
  }
}
