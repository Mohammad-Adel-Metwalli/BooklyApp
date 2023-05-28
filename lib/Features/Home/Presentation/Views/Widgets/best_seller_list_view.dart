import 'package:bookly_app/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Newest%20books%20cubit/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget
{
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state)
        {
      if (state is NewestBooksSuccess)
      {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index)
            {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: BestSellerListViewItem(bookModel: state.books[index]),
              );
            });
      }

      else if (state is NewestBooksFailure)
      {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      }

      else
      {
        return const CustomLoadingIndicator();
      }
    });
  }
}
