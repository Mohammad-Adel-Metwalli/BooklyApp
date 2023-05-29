import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/Repositories/Models/book_model.dart';
import '../../../Data/Repositories/home_repository.dart';
part 'relevant_books_state.dart';

class RelevantBooksCubit extends Cubit<RelevantBooksState>
{
  RelevantBooksCubit(this.homeRepository) : super(RelevantBooksInitial());

  final HomeRepository homeRepository;

  Future<void> fetchRelevantBooks({required String category}) async
  {
    emit(RelevantBooksLoading());
    var result = await homeRepository.fetchRelevantBooks(category: category);

    result.fold((failure) => emit(RelevantBooksFailure(failure.errorMessage)),
            (books) => emit(RelevantBooksSuccess(books)));
  }
}
