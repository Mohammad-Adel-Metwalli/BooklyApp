import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListViewItem extends StatelessWidget
{
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return AspectRatio(
      aspectRatio: 1.25/2,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22)
          ),
          child: SvgPicture.asset(AssetsData.bookImage)
      ),
      );
  }
}



