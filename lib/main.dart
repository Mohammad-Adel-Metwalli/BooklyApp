import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
