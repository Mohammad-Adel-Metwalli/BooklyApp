import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Utils/assets.dart';
import 'book_price_and_rating.dart';

class BestSellerListViewItem extends StatelessWidget
{
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7/4,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: SvgPicture.asset(AssetsData.bookImage)
              ),
            ),

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
                    child: Text(
                        'The Jungle Book',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.doHyeon(
                            fontSize: 20,
                            textStyle: const TextStyle(color: CupertinoColors.white)
                        )
                    )
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  Text(
                      'Rudyard Kipling',
                      style: GoogleFonts.doHyeon(
                          fontSize: 15,
                          textStyle: const TextStyle(color: Color(0xFFC9C8CD))
                      )
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  const BookPriceAndRating()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}