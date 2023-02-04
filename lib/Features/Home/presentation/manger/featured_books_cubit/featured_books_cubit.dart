import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/BookModel.dart';
import 'package:bookly/Features/Home/data/repositories/base_home_repository.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.baseHomeRepository) : super(FeaturedBooksInitial());
  final BaseHomeRepository baseHomeRepository;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await baseHomeRepository.getFeaturedBooks();

    result.fold(
        (failure) => emit(FeaturedBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(FeaturedBooksSuccess(bookModel: books)));
  }
}
