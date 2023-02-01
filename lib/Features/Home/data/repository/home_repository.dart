import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../models/book_model.dart';

abstract class HomeRepository
{
  Future<Either<Failure, List<BookModel>>>  getFeaturedBooks();
  Future<Either<Failure, List<BookModel>>>  getBestSellerBooks();
}