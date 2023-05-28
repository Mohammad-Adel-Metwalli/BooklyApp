import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../Home/Presentation/Views/Widgets/book_price_and_rating.dart';

class BookSearchListViewItem extends StatelessWidget {
  const BookSearchListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: primaryColor,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16)),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push('/bookDetailsView'),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              const SizedBox(width: 12),
              AspectRatio(
                aspectRatio: 2 / 4,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    child: SvgPicture.asset(AssetsData.bookImage)),
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
                        child: Text('The Jungle Book',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.doHyeonFont20)),
                    const SizedBox(
                      height: 3,
                    ),
                    Text('Rudyard Kipling', style: Styles.doHyeonFont15),
                    const SizedBox(
                      height: 3,
                    ),
                    // child: BookPriceAndRating(
                    //   bookModel: ,
                    // )
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
