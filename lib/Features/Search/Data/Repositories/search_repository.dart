import 'package:bookly_app/Core/Errors/failures.dart';
import 'package:bookly_app/Features/Home/Data/Repositories/Models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepository
{
  Future<Either<Failures, List<BookModel>>> fetchSearchedBooks({required String category});
}