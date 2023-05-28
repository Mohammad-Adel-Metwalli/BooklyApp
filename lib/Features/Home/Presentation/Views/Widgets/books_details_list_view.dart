import 'package:flutter/cupertino.dart';
import 'custom_list_view_item.dart';

class BooksDetailsListView extends StatelessWidget {
  const BooksDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                imageUrl: 'https://xaudiobooks.com/wp-content/uploads/2019/07/Grokking-Algorithms-By-Aditya-Bhargava-1536x1536.jpg',
              ),
            );
          }),
    );
  }
}
