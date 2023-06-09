import 'package:bookly_app/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app/Features/Search/Presentation/Manager/Searched%20books%20cubit/searched_books_cubit.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/widgets/custom_search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/widgets/custom_loading_indicator.dart';
import 'book_search_list_view_item.dart';

class SearchResultListView extends StatelessWidget
{
  const SearchResultListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
      builder: (context, state)
      {
        if (state is SearchedBooksSuccess)
        {
          if(CustomSearchTextField.category != '')
          {
            return ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index)
                {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.5),
                    child: BookSearchListViewItem(bookModel: state.books[index]),
                  );
                });
          }

          else
          {
            return const Center(child: Text('Try to search to get a list of books🔍'));
          }
        }

        else if(state is SearchedBooksFailure)
        {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }

        else
        {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
