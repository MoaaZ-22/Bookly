import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../models/BookModel.dart';

abstract class BaseHomeRepository
{
  Future<Either<Failure, BookModel>>  getFeaturedBooks();
  Future<Either<Failure, BookModel>>  getNewestBooks();
}