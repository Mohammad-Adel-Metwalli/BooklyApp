import 'package:bookly_app/Features/Search/Presentation/Views/widgets/book_search_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class SearchResultListView extends StatelessWidget
{
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 2.5),
            child: BookSearchListViewItem(),
          );
        });
  }
}
