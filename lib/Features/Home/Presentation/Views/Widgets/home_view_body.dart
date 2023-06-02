import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_bottom_bar.dart';
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
    return const Stack(
      children: [
        CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
          SliverToBoxAdapter(
              child: Column(children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            Styles.titleMedium
          ])),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: BestSellerListView(),
            ),
          )
        ]),

        CustomBottomBar()
      ],
    );
  }
}
