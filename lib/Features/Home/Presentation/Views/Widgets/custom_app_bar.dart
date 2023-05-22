import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget
{
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 28,
          ),

          const Spacer(),

          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24))
        ],
      ),
    );
  }
}