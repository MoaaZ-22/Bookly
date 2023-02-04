import 'package:bookly/Features/Home/data/repositories/base_home_repository.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/resources/api_service.dart';
import 'package:bookly/core/resources/strings_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../models/BookModel.dart';

class HomeRepository extends BaseHomeRepository {
  late final ApiService apiService;
  BookModel? bookModel;
  HomeRepository(ApiService apiService);

  @override
  Future<Either<Failure, BookModel>> getNewestBooks() async {
    try {
      var data = await apiService.get(endPoint: EndPoints.newestBooksPath);

      bookModel = BookModel.fromJson(data);

      return right(bookModel!);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.formDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BookModel>> getFeaturedBooks() async{
    try {
      var data = await apiService.get(endPoint: EndPoints.featuredBooksPath);

      bookModel = BookModel.fromJson(data);

      return right(bookModel!);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.formDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
