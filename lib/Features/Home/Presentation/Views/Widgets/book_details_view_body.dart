import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/books_details_list_view.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_list_view_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'book_rating_only.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget
{
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),

                const SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: const CustomBookImage(),
                ),

                const SizedBox(height: 26),

                Text('The Jungle Book', style: GoogleFonts.doHyeon(textStyle: const TextStyle(fontSize: 30))),

                Text('Rudyard Kipling', style: GoogleFonts.doHyeon(textStyle: const TextStyle(fontSize: 20, color: greyColor))),

                const SizedBox(height: 10),

                const BookRatingOnly(),

                const SizedBox(height: 29),

                const BooksAction(),

                const Expanded(child: SizedBox(height: 50)),

                const Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('You can also like', style: TextStyle(fontSize: 14))
                  ),
                ),

                const SizedBox(height: 8),

                const BooksDetailsListView(),

                const SizedBox(height: 15)
              ],
            ),
          ),
        )
      ],
    );
  }
}

