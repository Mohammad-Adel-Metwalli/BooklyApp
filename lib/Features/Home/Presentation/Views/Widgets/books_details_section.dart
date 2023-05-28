import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants.dart';
import 'book_rating_only.dart';
import 'books_action.dart';
import 'custom_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .2),
        child: const CustomBookImage(
          imageUrl: 'https://xaudiobooks.com/wp-content/uploads/2019/07/Grokking-Algorithms-By-Aditya-Bhargava-1536x1536.jpg',
        ),
      ),
      const SizedBox(height: 26),
      Text('The Jungle Book',
          style: GoogleFonts.doHyeon(textStyle: const TextStyle(fontSize: 30))),
      Text('Rudyard Kipling',
          style: GoogleFonts.doHyeon(
              textStyle: const TextStyle(fontSize: 20, color: greyColor))),
      const SizedBox(height: 10),
      const BookRatingOnly(),
      const SizedBox(height: 29),
      const BooksAction(),
    ]);
  }
}
