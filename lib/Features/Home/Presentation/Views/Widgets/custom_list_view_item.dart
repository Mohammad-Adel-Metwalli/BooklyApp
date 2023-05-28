import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget
{
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;
  @override
  Widget build(BuildContext context)
  {
    return AspectRatio(
      aspectRatio: 1.25 / 2,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
              fit: BoxFit.fill,
                image: NetworkImage(imageUrl)
            )
          ),
      ),
    );
  }
}
