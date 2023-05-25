import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget
{
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
        body: SafeArea(
            child: BookDetailsViewBody()
        )
    );
  }
}