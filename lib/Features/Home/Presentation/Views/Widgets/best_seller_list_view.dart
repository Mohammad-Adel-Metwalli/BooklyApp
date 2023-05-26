import 'package:flutter/cupertino.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget
{
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index)
        {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: BestSellerListViewItem(),
          );
        });
  }
}