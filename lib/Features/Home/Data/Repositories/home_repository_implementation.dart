import 'package:bookly_app/Core/Errors/failures.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model.dart';
import 'package:bookly_app/Features/Home/Data/Repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImplementation implements HomeRepository
{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks()
  {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks()
  {
    throw UnimplementedError();
  }

}