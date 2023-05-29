part of 'relevant_books_cubit.dart';

@immutable
abstract class RelevantBooksState {}

class RelevantBooksInitial extends RelevantBooksState {}
class RelevantBooksLoading extends RelevantBooksState {}
class RelevantBooksSuccess extends RelevantBooksState
{
  final List<BookModel> books;

  RelevantBooksSuccess(this.books);
}

class RelevantBooksFailure extends RelevantBooksState
{
  final String errorMessage;

  RelevantBooksFailure(this.errorMessage);
}
