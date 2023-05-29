import 'package:bookly_app/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Relevant%20books%20cubit/relevant_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_list_view_item.dart';

class BooksDetailsListView extends StatelessWidget
{
  const BooksDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<RelevantBooksCubit, RelevantBooksState>(
      builder: (context, state)
      {
        if (state is RelevantBooksSuccess)
        {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .17,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index)
                {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  );
                }),
          );
        }

        else if(state is RelevantBooksFailure)
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
