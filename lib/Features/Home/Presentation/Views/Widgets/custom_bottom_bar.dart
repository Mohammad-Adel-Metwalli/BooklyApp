import 'dart:ui';
import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:flutter/material.dart';

import 'bottom_bar_icons.dart';

class CustomBottomBar extends StatelessWidget
{
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Container(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: AssetsData.borderRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              height: 51,
              width: 238,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: AssetsData.borderRadius,
                border: Border.all(width: 1.5, color: Colors.white30)
              ),
              
              child: const BottomBarIcons(),
            ),
          ),
        ),
      ),
    );
  }
}


