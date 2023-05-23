import 'package:flutter/cupertino.dart';
import 'custom_app_bar.dart';
import 'featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Column(
      children: [
        CustomAppBar(),

        FeaturedBooksListView()
      ],
    );
  }
}
