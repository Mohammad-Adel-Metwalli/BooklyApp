import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/Repositories/Models/book_model.dart';
part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState>
{
  SearchBooksCubit() : super(SearchBooksInitial());

  Future<void> fetchSearchedBooks() async
  {

  }
}
