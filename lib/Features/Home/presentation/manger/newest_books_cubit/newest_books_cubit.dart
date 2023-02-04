import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/BookModel.dart';
import 'package:bookly/Features/Home/data/repositories/base_home_repository.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.baseHomeRepository) : super(NewestBooksInitial());

  final BaseHomeRepository baseHomeRepository;

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await baseHomeRepository.getNewestBooks();

    result.fold(
        (failure) =>
            emit(NewestBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(NewestBooksSuccess(bookModel: books)));
  }
}
