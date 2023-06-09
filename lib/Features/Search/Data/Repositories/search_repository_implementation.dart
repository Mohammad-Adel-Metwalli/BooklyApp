import 'package:bookly_app/Core/Errors/failures.dart';
import 'package:bookly_app/Core/Utils/api_service.dart';
import 'package:bookly_app/Features/Home/Data/Repositories/Models/book_model.dart';
import 'package:bookly_app/Features/Search/Data/Repositories/search_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepositoryImplementation implements SearchRepository
{
  final ApiService apiService;

  SearchRepositoryImplementation(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchedBooks({required String category}) async
  {
    try
    {
      var data = await apiService.get(endPoint: '?Filtering=free-ebooks&Sorting=relevance&q=subject:$category');

      List<BookModel> books = [];
      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    }

    catch(e)
    {
      if(e is DioError)
      {
        return left(ServerFailures.fromDioError(e));
      }

      return left(ServerFailures(e.toString()));
    }
  }
}