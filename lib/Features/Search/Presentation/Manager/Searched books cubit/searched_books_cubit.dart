import 'package:bookly_app/Features/Home/Data/Repositories/Models/book_model.dart';
import 'package:bookly_app/Features/Search/Data/Repositories/search_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState>
{
  SearchedBooksCubit(this.searchRepository) : super(SearchedBooksInitial());

  final SearchRepository searchRepository;

  Future<void> fetchSearchedBooks({required String category}) async
  {
    emit(SearchedBooksLoading());
    var result = await searchRepository.fetchSearchedBooks(category: category);

    result.fold((failure) => emit(SearchedBooksFailure(failure.errorMessage)), (books)
    {
      emit(SearchedBooksSuccess(books));
    });
  }
}
