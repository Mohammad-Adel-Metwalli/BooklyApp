import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../../../Data/Repositories/Models/book_model.dart';
import 'book_price_and_rating.dart';

class BestSellerListViewItem extends StatelessWidget
{
  const BestSellerListViewItem({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push('/bookDetailsView', extra: bookModel),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
              const SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(bookModel.volumeInfo.title.toString(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.doHyeonFont20)),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(bookModel.volumeInfo.authors![0].toString(), style: Styles.doHyeonFont15),
                    const SizedBox(
                      height: 3,
                    ),
                    BookPriceAndRating(bookModel: bookModel)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
