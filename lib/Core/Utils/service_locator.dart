import 'package:bookly_app/Core/Utils/api_service.dart';
import 'package:bookly_app/Features/Home/Data/Repositories/home_repository_implementation.dart';
import 'package:bookly_app/Features/Search/Data/Repositories/search_repository_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
final getSearch = GetIt.instance;

void setUpServiceLocator()
{
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepositoryImplementation>(
      HomeRepositoryImplementation(
      getIt.get<ApiService>()
      )
  );

  getSearch.registerSingleton<SearchRepositoryImplementation>(
      SearchRepositoryImplementation(
          getIt.get<ApiService>()
      )
  );
}


