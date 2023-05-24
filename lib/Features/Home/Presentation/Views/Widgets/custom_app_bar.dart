import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget
{
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 45),
      child: Row(
        children: [
          SvgPicture.asset(AssetsData.logo, height: 26),

          const Spacer(),

          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24))
        ],
      ),
    );
  }
}