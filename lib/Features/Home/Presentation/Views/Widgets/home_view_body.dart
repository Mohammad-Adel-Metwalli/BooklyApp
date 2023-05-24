import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'custom_app_bar.dart';
import 'featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomAppBar(),

          FeaturedBooksListView(),

          Styles.titleMedium,
          
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
