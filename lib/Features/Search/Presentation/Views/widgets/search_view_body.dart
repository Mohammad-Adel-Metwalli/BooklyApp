import 'package:bookly_app/Features/Search/Presentation/Views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          CustomSearchTextField(),
          SizedBox(height: 30),
          Text('Search Result', style: TextStyle(fontSize: 18)),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
