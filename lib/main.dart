import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Core/Utils/assets.dart';
import 'Features/Presentation/Views/splash_view.dart';

void main()
{
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget
{
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: AssetsData.fontFamilyPoppins
      ).copyWith(
        scaffoldBackgroundColor: primaryColor
      ),
      home: const SplashView(),
    );
  }
}
