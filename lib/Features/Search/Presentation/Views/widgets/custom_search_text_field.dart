import 'package:bookly_app/Features/Search/Presentation/Manager/Searched%20books%20cubit/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget
{
  const CustomSearchTextField({Key? key}) : super(key: key);
  static String? category;

  @override
  Widget build(BuildContext context)
  {
    return TextField(
      onSubmitted: (data) async
      {
        category = data;
        BlocProvider.of<SearchedBooksCubit>(context).fetchSearchedBooks(category: data);
      },
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder()
  {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
