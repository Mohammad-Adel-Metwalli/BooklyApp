import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../Core/Utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget
{
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
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
          )
        ],
      ),
    );
  }
}