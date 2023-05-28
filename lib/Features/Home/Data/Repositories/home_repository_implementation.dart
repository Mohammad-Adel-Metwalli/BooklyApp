import 'package:bookly_app/Core/Errors/failures.dart';
import 'package:bookly_app/Features/Home/Data/Repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../Core/Utils/api_service.dart';
import 'Models/book_model.dart';

class HomeRepositoryImplementation implements HomeRepository {
  final ApiService apiService;

  HomeRepositoryImplementation(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(endPoint: '?Filtering=free-ebooks&Sorting=newest &q=subject:programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailures.fromDioError(e));
      }

      return left(ServerFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: '?Filtering=free-ebooks&q=subject:programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailures.fromDioError(e));
      }

      return left(ServerFailures(e.toString()));
    }
  }
}
