import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/Repositories/Models/book_model.dart';
import '../../../Data/Repositories/home_repository.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState>
{
  FeaturedBooksCubit(this.homeRepository) : super(FeaturedBooksInitial());

  final HomeRepository homeRepository;

  Future<void> fetchFeaturedBooks() async
  {
    emit(FeaturedBooksLoading());
    var result = await homeRepository.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
