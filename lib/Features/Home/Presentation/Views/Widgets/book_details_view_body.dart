import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_list_view_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'book_rating_only.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget
{
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),

          const SizedBox(height: 30.82),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),

          const SizedBox(height: 37),

          Text('The Jungle Book', style: GoogleFonts.doHyeon(textStyle: const TextStyle(fontSize: 30))),

          Text('Rudyard Kipling', style: GoogleFonts.doHyeon(textStyle: const TextStyle(fontSize: 20, color: greyColor))),

          const SizedBox(height: 10),

          const BookRatingOnly(),

          const SizedBox(),


        ],
      ),
    );
  }
}


