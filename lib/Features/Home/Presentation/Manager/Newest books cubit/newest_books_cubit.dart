import 'package:bookly_app/Features/Home/Data/Repositories/home_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/Models/book_model.dart';
part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState>
{
  NewestBooksCubit(this.homeRepository) : super(NewestBooksInitial());

  final HomeRepository homeRepository;

  Future<void> fetchNewestBooks() async
  {
    emit(NewestBooksLoading());
    var result = await homeRepository.fetchNewestBooks();

    result.fold((failure) => emit(NewestBooksFailure(failure.errorMessage))
    ,(books) => emit(NewestBooksSuccess(books)));
  }
}
