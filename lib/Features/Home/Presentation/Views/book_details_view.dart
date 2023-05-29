import 'package:bookly_app/Features/Home/Data/Repositories/Models/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Relevant%20books%20cubit/relevant_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget
{
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView>
{
  @override
  void initState()
  {
    BlocProvider.of<RelevantBooksCubit>(context).fetchRelevantBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailsViewBody(bookModel: widget.bookModel)));
  }
}
