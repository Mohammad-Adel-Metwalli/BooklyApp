import 'package:bookly_app/Features/Home/Data/Repositories/Models/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_list_view_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../Home/Presentation/Views/Widgets/book_price_and_rating.dart';

class BookSearchListViewItem extends StatelessWidget
{
  const BookSearchListViewItem({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: primaryColor,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16)),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push('/bookDetailsView', extra: bookModel),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              const SizedBox(width: 12),
              AspectRatio(
                aspectRatio: 2 / 3.5,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    child: CustomBookImage(
                      imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
                    )
                ),
              ),
              const SizedBox(
                width: 20,
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

                    Text(
                        bookModel.volumeInfo.authors![0].toString(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Styles.doHyeonFont15),

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
