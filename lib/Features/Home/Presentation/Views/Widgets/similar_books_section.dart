import 'package:flutter/cupertino.dart';
import 'books_details_list_view.dart';

class SimilarBooksSection extends StatelessWidget
{
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 6),
          child: Text('You can also like', style: TextStyle(fontSize: 14)),
        ),

        SizedBox(height: 8),

        BooksDetailsListView(),
      ],
    );
  }
}