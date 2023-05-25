import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(),

              FeaturedBooksListView(),

              Styles.titleMedium
            ]
          )
        ),

        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: BestSellerListView(),
          ),
        )
      ]
    );
  }
}

