import 'package:bookly_app/Core/Utils/service_locator.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Relevant%20books%20cubit/relevant_books_cubit.dart';
import 'package:bookly_app/Features/Search/Data/Repositories/search_repository_implementation.dart';
import 'package:bookly_app/Features/Search/Presentation/Manager/Searched%20books%20cubit/searched_books_cubit.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Home/Data/Repositories/Models/book_model.dart';
import '../../Features/Home/Data/Repositories/home_repository_implementation.dart';
import '../../Features/Home/Presentation/Views/book_details_view.dart';
import '../../Features/Home/Presentation/Views/home_view.dart';
import '../../Features/Presentation/Views/splash_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),

    GoRoute(path: '/homeView', builder: (context, state) => const HomeView()),

    GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => BlocProvider(
            create: (context) => RelevantBooksCubit(getIt.get<HomeRepositoryImplementation>()),
            child: BookDetailsView(bookModel: state.extra as BookModel)
        )
    ),

    GoRoute(
        path: '/searchView', 
        builder: (context, state) => BlocProvider(
        create: (context) => SearchedBooksCubit(getSearch.get<SearchRepositoryImplementation>()),
        child: const SearchView()
    )
    )
  ]);
}
