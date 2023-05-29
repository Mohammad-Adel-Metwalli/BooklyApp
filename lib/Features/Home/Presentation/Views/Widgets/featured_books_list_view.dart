import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Featured%20books%20cubit/featured_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/widgets/custom_error_widget.dart';
import 'custom_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget
{
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state)
      {
        if (state is FeaturedBooksSuccess)
        {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index)
                {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: ()
                      {
                        GoRouter.of(context).push('/bookDetailsView', extra: state.books[index]);
                      },
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                      ),
                    ),
                  );
                }),
          );
        }

        else if (state is FeaturedBooksFailure)
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
