import 'package:bookly_app/Core/Errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'Models/book_model.dart';

abstract class HomeRepository {
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
