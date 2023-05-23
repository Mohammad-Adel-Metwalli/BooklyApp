import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget
{
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return AspectRatio(
      aspectRatio: 1.2/2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(22),
          image: const DecorationImage(
              image: AssetImage(AssetsData.bookImage),
            fit: BoxFit.fill
          )
        ),
      ),
    );
  }
}



