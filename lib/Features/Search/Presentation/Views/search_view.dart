import 'package:bookly_app/Features/Search/Presentation/Manager/Searched%20books%20cubit/searched_books_cubit.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchView extends StatefulWidget
{
  const SearchView({Key? key,}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
{
  @override
  void initState()
  {
    BlocProvider.of<SearchedBooksCubit>(context).fetchSearchedBooks(category: CustomSearchTextField.category ?? '');
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      );
  }
}
