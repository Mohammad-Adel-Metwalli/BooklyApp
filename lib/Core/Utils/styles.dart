import 'package:bookly_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'assets.dart';

abstract class Styles
{
  static const titleMedium = Padding(
    padding: EdgeInsets.only(right: 247, top: 50, bottom: 10),
    child: Text('Best Seller', style: TextStyle(fontFamily: AssetsData.fontFamilyPoppins, fontSize: 20)),
  );

  static TextStyle doHyeonFont20 = GoogleFonts.doHyeon(
  fontSize: 20,
  textStyle: const TextStyle(color: CupertinoColors.white));

  static TextStyle doHyeonFont15 = GoogleFonts.doHyeon(
      fontSize: 15,
      textStyle: const TextStyle(color: greyColor)
  );
}