import 'package:flutter/cupertino.dart';
import 'assets.dart';

abstract class Styles
{
  static const titleMedium = Padding(
    padding: EdgeInsets.only(right: 247, top: 50, bottom: 10),
    child: Text('Best Seller', style: TextStyle(fontFamily: AssetsData.fontFamilyPoppins, fontSize: 20)),
  );
}