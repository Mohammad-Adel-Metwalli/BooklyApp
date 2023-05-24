import 'package:bookly_app/Core/Utils/app_router.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'Core/Utils/assets.dart';

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
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: AssetsData.fontFamilyPoppins
      ).copyWith(
        scaffoldBackgroundColor: primaryColor
      ),
    );
  }
}
