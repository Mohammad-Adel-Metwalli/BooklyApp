import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 20),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50)),
                SimilarBooksSection(),
                SizedBox(height: 15)
              ],
            ),
          ),
        )
      ],
    );
  }
}
