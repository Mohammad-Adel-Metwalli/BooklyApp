import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_profile_icon.dart';

class BottomBarIcons extends StatelessWidget
{
  const BottomBarIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      children: [
        Spacer(),

        Icon(FontAwesomeIcons.bookOpen),

        Spacer(),

        Icon(Icons.bookmark, color: Colors.white70),

        Spacer(),

        Icon(FontAwesomeIcons.podcast, color: Colors.white70),

        Spacer(),

        CustomProfileIcon(),

        Spacer()
      ],
    );
  }
}