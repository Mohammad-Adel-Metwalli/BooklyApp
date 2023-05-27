import 'package:bookly_app/Features/Home/Data/Repositories/home_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/Models/book_model.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState>
{
  FeaturedBooksCubit(this.homeRepository) : super(FeaturedBooksInitial());

  final HomeRepository homeRepository;

  Future<void> fetchFeaturedBooks() async
  {
    emit(FeaturedBooksLoading());
    var result = await homeRepository.fetchFeaturedBooks();

    result.fold((failure)
    {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }
    ,(books)
    {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
