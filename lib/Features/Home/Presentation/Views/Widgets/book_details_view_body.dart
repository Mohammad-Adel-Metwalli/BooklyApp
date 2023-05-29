import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import '../../../Data/Repositories/Models/book_model.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget
{
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context)
  {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
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
                BookDetailsSection(bookModel: bookModel),
                const Expanded(child: SizedBox(height: 50)),
                const SimilarBooksSection(),
                const SizedBox(height: 15)
              ],
            ),
          ),
        )
      ],
    );
  }
}
