import 'package:bookly_app/Core/Utils/app_router.dart';
import 'package:bookly_app/Core/Utils/service_locator.dart';
import 'package:bookly_app/Features/Home/Data/Repositories/home_repository_implementation.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Relevant%20books%20cubit/relevant_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Core/Utils/assets.dart';
import 'Features/Home/Presentation/Manager/Newest books cubit/newest_books_cubit.dart';

void main()
{
  setUpServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget
{
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepositoryImplementation>()
        )..fetchFeaturedBooks()
        ),

        BlocProvider(create: (context) => NewestBooksCubit(
            getIt.get<HomeRepositoryImplementation>()
        )..fetchNewestBooks()
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: AssetsData.fontFamilyPoppins
        ).copyWith(
          scaffoldBackgroundColor: primaryColor
        ),
      ),
    );
  }
}
